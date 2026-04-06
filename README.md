# 🛒 End-to-End E-commerce Analytics Engineering Project (dbt + PostgreSQL)

## 📌 Overview

This project demonstrates a complete **analytics engineering workflow** using **dbt Core**, **PostgreSQL**, and **Docker** in a simulated e-commerce environment.

Synthetic transaction data is generated using Python, with intentional data quality issues to mimic real-world imperfect datasets. The data is then transformed through layered SQL models into a clean **Star Schema** ready for analytics and BI reporting.

---

## 🧱 Architecture: Medallion Design

This project follows the **Medallion Architecture (Bronze → Silver → Gold)**:

### 🟤 Bronze Layer (`Bronze_layer/`)

* Raw ingestion layer
* Minimal transformation
* Represents raw transactional data

File:

* `br_ecommerce_sales.sql`

---

### ⚪ Silver Layer (`Silver_layer/`)

* Data cleaning and standardization
* Deduplication and null handling
* Data quality improvements

File:

* `sl_ecommerce_sales.sql`

---

### 🟡 Gold Layer (`gold/`)

* Analytics-ready datasets
* Star Schema modeling

Files:

* `fct_orders.sql` → Fact table (revenue, orders)
* `dim_customers.sql` → Customer dimension
* `dim_products.sql` → Product dimension

---

## ⭐ Data Model

### Fact Table

* **fct_orders**

  * Order-level metrics
  * Revenue calculations
  * Aggregated business logic

### Dimension Tables

* **dim_customers**
* **dim_products**

Designed for fast querying and BI reporting.

---

## 📂 Repository Structure

```bash
end-to-end-ecommerce-analytics-engineering-dbt/
│
├── Docker_configuration/
│   ├── Dockerfile
│   └── docker-compose.yml
│
├── Medallion_Architecture/
│   ├── Bronze_layer/
│   │   └── br_ecommerce_sales.sql
│   │
│   ├── Silver_layer/
│   │   └── sl_ecommerce_sales.sql
│   │
│   ├── gold/
│   │   ├── dim_customers.sql
│   │   ├── dim_products.sql
│   │   └── fct_orders.sql
│   │
│   └── Medallion_Architecture.png
│
├── data_source/
│   └── ecommerce_sales.py
│
└── README.md
```

---

## ⚙️ How to Run the Project

### 1. Clone the repository

```bash
git clone <your-repo-url>
cd end-to-end-ecommerce-analytics-engineering-dbt
```

---

### 2. Start PostgreSQL & dbt using Docker

```bash
cd Docker_configuration
docker compose up -d --build
```

---

### 3. Run transformations

Inside your dbt environment:

```bash
dbt run
dbt test
```

---

## 🧪 Data Engineering Workflow

1. **Data Generation**

   * Python script: `data_source/ecommerce_sales.py`
   * Creates synthetic e-commerce data
   * Injects data quality issues (nulls, duplicates, inconsistencies)

2. **Data Transformation**

   * Bronze → Raw ingestion
   * Silver → Cleaning & validation
   * Gold → Business-ready models

3. **Data Modeling**

   * Star Schema design
   * Fact + Dimension tables

---

## 📊 Business Use Cases

This project enables analysis of:

* 📈 Revenue trends
* 🛍️ Product performance
* 🌍 Country-level sales
* 👥 Customer behavior
* 🔍 Data quality issues

---

## 🧰 Tech Stack

* **dbt Core** – Data transformation
* **PostgreSQL** – Data warehouse
* **Docker & Docker Compose** – Environment setup
* **Python** – Data generation
* **VS Code** – Development

---

## 🎯 Key Highlights

✔ End-to-end analytics engineering pipeline
✔ Medallion architecture implementation
✔ Realistic data quality challenges
✔ SQL-based transformation workflows
✔ Analytics-ready data modeling

---

## ⚠️ Note on CI/CD

This project focuses on **core analytics engineering concepts**:

* Data modeling
* Transformation logic
* Data quality

CI/CD pipelines (e.g., GitHub Actions) were not implemented, but all required models and logic are included for reproducibility.

---

## 💡 Future Improvements

* Add dbt tests and documentation (`dbt docs`)
* Implement CI/CD (GitHub Actions)
* Add BI dashboard (Power BI / Tableau)
* Migrate to cloud warehouse (Snowflake / BigQuery)

---

## 👤 Author

**ZerihunWaje**
Analytics Engineer

---

## ⭐ Support

If you found this project useful, consider giving it a ⭐

