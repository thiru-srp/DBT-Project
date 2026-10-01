# Retail & Sales Analytics: Modern Databricks dbt Pipeline

A dbt project designed to build a modern analytics layer on top of retail and sales data in Databricks. Following the Medallion architecture, it organizes raw source tables into a structured bronze → silver → gold transformation flow to deliver business-ready reporting models.

## Project Domain Model Overview

The data model covers core retail entities such as sales, returns, customers, products, stores, dates, and item metadata. It is structured to support analytics, KPI reporting, and data quality validation in a scalable dbt workflow.

## Architecture

- Bronze layer: raw and lightly structured data sourced from operational tables
- Silver layer: cleaned and joined business logic for downstream analysis
- Gold layer: curated reporting and aggregated metrics
- Seeds: reference and lookup data used during transformation
- Tests: quality checks to validate assumptions and data integrity

## Source data

The project loads data from the following source tables:

- fact_sales
- fact_returns
- dim_date
- dim_store
- dim_product
- dim_customer
- items

## Key project structure

```text
thiru_dbt_project/
├── dbt_project.yml
├── profiles.yml
├── models/
│   ├── bronze/
│   ├── silver/
│   ├── gold/
│   └── source/
├── macros/
├── seeds/
├── snapshots/
├── tests/
├── analyses/
└── target/
```

## Example dbt workflow

```bash
cd thiru_dbt_project
dbt debug
dbt run
dbt test
```

This project is configured to use a Databricks profile and is designed for local dbt execution against a Databricks warehouse or SQL endpoint.

## Data quality

The project includes validation checks to catch issues such as negative values and inconsistent derived measures, ensuring the warehouse tables remain reliable for reporting use cases.

## Notes

This repository is intended for analytics and reporting use cases and demonstrates a practical dbt implementation for retail data modeling and transformation.

---

For more details, explore the dbt models and configuration files in the project folder.
