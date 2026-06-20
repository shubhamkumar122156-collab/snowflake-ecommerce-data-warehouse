# 🏗️ Snowflake E-Commerce Data Warehouse

> **A production-style end-to-end Snowflake Data Warehouse implementing modern data warehousing principles, dimensional modeling, data quality validation, auditing, and business analytics for an e-commerce business.**

![Snowflake](https://img.shields.io/badge/Snowflake-Cloud%20Data%20Warehouse-29B5E8?logo=snowflake\&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Advanced-blue)
![Data%20Warehouse](https://img.shields.io/badge/Data%20Warehouse-End--to--End-success)
![Analytics](https://img.shields.io/badge/Business-Analytics-orange)
![License](https://img.shields.io/badge/License-MIT-green)

---

# 📌 Project Overview

This project demonstrates the design and implementation of a modern **end-to-end Snowflake Data Warehouse** for an e-commerce business.

The solution follows a layered data architecture consisting of **RAW → STAGE → CLEAN → GOLD**, ensuring data quality, consistency, scalability, and maintainability throughout the data lifecycle.

The project also incorporates dedicated **Data Quality (DQ)**, **Audit**, and **Reference Data** frameworks alongside a dimensional model and an analytics layer to support business intelligence and reporting.

Rather than focusing solely on SQL queries, the project demonstrates how data is ingested, validated, transformed, modeled, and converted into actionable business insights using industry-standard data warehousing principles.

---

# 🎯 Project Objectives

The primary objectives of this project are to:

* Design a scalable Snowflake Data Warehouse architecture.
* Implement a multi-layer ETL pipeline using SQL.
* Improve data quality through validation and cleansing.
* Build a dimensional model using Star Schema.
* Create reusable analytical views for business reporting.
* Provide executive-level EDA reports for business decision-making.
* Demonstrate practical Analytics Engineering concepts using Snowflake.

---

# ✨ Key Features

* End-to-End Snowflake Data Warehouse
* Multi-Layer Architecture (RAW → STAGE → CLEAN → GOLD)
* Data Quality Validation Framework
* Audit & Pipeline Monitoring
* Reference Data Management
* Star Schema Design
* Business Analytics Layer
* Executive EDA Reporting
* Comprehensive Project Documentation

---

# 🏛️ High-Level Architecture

```
                Source Data
                     │
                     ▼
             ┌────────────────┐
             │      RAW       │
             └────────────────┘
                     │
                     ▼
             ┌────────────────┐
             │     STAGE      │
             └────────────────┘
                     │
                     ▼
             ┌────────────────┐
             │     CLEAN      │
             └────────────────┘
                     │
                     ▼
          ┌─────────────────────┐
          │  GOLD (Star Schema) │
          └─────────────────────┘
                     │
                     ▼
        Business Analytics Views
                     │
                     ▼
     Executive EDA & KPI Reports
```

> **Architecture diagrams and detailed design documents are available in the `/Documentation` folder.**
> # 🛠️ Technology Stack

| Technology             | Purpose                                                         |
| ---------------------- | --------------------------------------------------------------- |
| **Snowflake**          | Cloud Data Warehouse Platform                                   |
| **SQL**                | Data Definition (DDL), Data Manipulation (DML), ETL & Analytics |
| **Star Schema**        | Dimensional Data Modeling                                       |
| **Git & GitHub**       | Version Control & Project Management                            |
| **Markdown**           | Project Documentation                                           |
| **Draw.io / Diagrams** | Architecture & Database Design Documentation                    |

---

# 📂 Project Structure

```text
snowflake-ecommerce-data-warehouse/
│
├── README.md
├── LICENSE
│
├── Documentation/
│   ├── Project Documentation.pdf
│   ├── Database Blueprint.pdf
│   ├── Data Dictionary.pdf
│   ├── Architecture Diagram.png
│   ├── Star Schema.png
│   ├── Business Analytics Documentation.pdf
│   ├── Business EDA Report Documentation.pdf
│   └── Advanced EDA Report Documentation.pdf
│
├── SQL/
│   ├── 01_Database_Setup.sql
│   ├── 02_RAW_Layer.sql
│   ├── 03_STAGE_Layer.sql
│   ├── 04_CLEAN_Layer.sql
│   ├── 05_GOLD_Layer.sql
│   ├── 06_REFERENCE_Data.sql
│   ├── 07_Data_Quality.sql
│   ├── 08_Audit_Framework.sql
│   ├── 09_Analytics_Views.sql
│   ├── 10_Business_EDA_Report.sql
│   └── 11_Advanced_Business_EDA_Report.sql
│
├── Sample_Data/
│   ├── customers.csv
│   ├── orders.csv
│   ├── payments.csv
│   ├── products.csv
│   ├── shipments.csv
│   └── employees.csv
│
├── Screenshots/
│   ├── Snowflake_Database.png
│   ├── Warehouse_Structure.png
│   ├── Analytics_Views.png
│   ├── Business_EDA_Report.png
│   └── Advanced_EDA_Report.png
│
└── Assets/
    ├── Project_Logo.png
    └── Architecture.png
```

---

# 🗄️ Database Architecture

The project follows a **multi-layer modern data warehouse architecture**, where data progressively moves through different processing stages before becoming available for analytics.

## RAW Layer

The RAW layer stores unprocessed source data exactly as received. No business rules or constraints are applied, ensuring complete preservation of source records.

**Tables**

* RAW_CUSTOMERS
* RAW_ORDERS
* RAW_PAYMENTS
* RAW_PRODUCTS
* RAW_SHIPMENTS
* RAW_EMPLOYEES

---

## STAGE Layer

The STAGE layer performs initial standardization and prepares raw data for validation. Data types are standardized, formatting inconsistencies are addressed, and records are prepared for quality checks.

**Tables**

* CUSTOMERS_STAGE
* ORDERS_STAGE
* PAYMENTS_STAGE
* PRODUCTS_STAGE
* SHIPMENTS_STAGE
* EMPLOYEES_STAGE

---

## CLEAN Layer

The CLEAN layer applies business validation rules to ensure high-quality, reliable datasets. Invalid, duplicate, or inconsistent records are identified and managed before loading into the dimensional model.

**Tables**

* CUSTOMERS_CLEAN
* ORDERS_CLEAN
* PAYMENTS_CLEAN
* PRODUCTS_CLEAN
* SHIPMENTS_CLEAN
* EMPLOYEES_CLEAN

---

## GOLD Layer

The GOLD layer contains the dimensional model used for analytics and reporting. It consists of dimension tables, fact tables, and analytical views designed to support business intelligence workloads.

**Dimensions**

* DIM_CUSTOMERS
* DIM_PRODUCTS
* DIM_EMPLOYEES
* DIM_PAYMENTS
* DIM_SHIPMENTS
* DIM_DATE

**Facts**

* FACT_ORDERS
* FACT_PAYMENTS
* FACT_SHIPMENTS
* FACT_SALES
* FACT_EMPLOYEE_ACTIVITY

This layer serves as the primary source for business reporting and analytical queries.
# 🔄 Data Pipeline

The project implements a structured ETL pipeline using a layered Snowflake architecture. Each layer has a clearly defined responsibility, ensuring that data progresses from raw ingestion to business-ready analytics in a controlled and maintainable manner.

```text
Source Data
      │
      ▼
 RAW Layer
      │
      ▼
 STAGE Layer
      │
      ▼
 CLEAN Layer
      │
      ▼
 GOLD Layer
      │
      ▼
 Analytics Views
      │
      ▼
 Business EDA Reports
```

---

# 📥 RAW Layer

The **RAW** layer serves as the landing zone for source data.

### Responsibilities

* Store source data exactly as received.
* Preserve original data without modifications.
* Avoid primary keys, foreign keys, or business constraints.
* Maintain full traceability of incoming records.

### Tables

* RAW_CUSTOMERS
* RAW_ORDERS
* RAW_PAYMENTS
* RAW_PRODUCTS
* RAW_SHIPMENTS
* RAW_EMPLOYEES

---

# ⚙️ STAGE Layer

The **STAGE** layer prepares raw data for cleansing and validation.

### Responsibilities

* Standardize column formats.
* Normalize text values.
* Trim whitespace.
* Convert data types.
* Prepare data for business rule validation.

### Tables

* CUSTOMERS_STAGE
* ORDERS_STAGE
* PAYMENTS_STAGE
* PRODUCTS_STAGE
* SHIPMENTS_STAGE
* EMPLOYEES_STAGE

---

# 🧹 CLEAN Layer

The **CLEAN** layer enforces business rules and ensures data quality.

### Responsibilities

* Remove duplicate records.
* Detect conflicting records.
* Validate mandatory fields.
* Handle NULL and blank values.
* Standardize textual information.
* Apply business validation rules.
* Prepare trusted datasets for analytics.

### Tables

* CUSTOMERS_CLEAN
* ORDERS_CLEAN
* PAYMENTS_CLEAN
* PRODUCTS_CLEAN
* SHIPMENTS_CLEAN
* EMPLOYEES_CLEAN

---

# ⭐ GOLD Layer

The **GOLD** layer represents the analytical model of the warehouse.

It is optimized for reporting, dashboarding, and business intelligence.

### Components

### Dimension Tables

* DIM_CUSTOMERS
* DIM_PRODUCTS
* DIM_EMPLOYEES
* DIM_PAYMENTS
* DIM_SHIPMENTS
* DIM_DATE

### Fact Tables

* FACT_ORDERS
* FACT_PAYMENTS
* FACT_SHIPMENTS
* FACT_SALES
* FACT_EMPLOYEE_ACTIVITY

The dimensional model follows **Star Schema principles**, enabling efficient analytical queries and simplified reporting.

---

# 📊 Analytics Layer

The Analytics layer transforms the dimensional model into business-focused insights through reusable SQL views.

The project contains **57+ analytical views**, organized into functional business domains.

### Sales & Revenue

* Revenue Analysis
* Monthly Revenue
* Product Performance
* Average Order Value
* Promotion Analysis

### Customer Analytics

* Customer Lifetime Value
* Repeat Purchase Rate
* Customer Churn
* Customer Segmentation
* Top Customers

### Orders & Fulfillment

* Order Cancellation Analysis
* Delivery Performance
* Payment Mismatch Detection
* Return Analysis

### Inventory & Suppliers

* Inventory Performance
* Stock Turnover
* Supplier Performance
* Product Profitability

### Finance & Risk

* Payment Success Rate
* Fraud Detection
* Logistics Cost
* Campaign ROI
* Compliance Monitoring

---

# 📈 Executive Reporting Layer

The final layer provides executive-ready business reports by consolidating multiple analytical views into unified KPI dashboards.

### Reports

* **VW_BUSINESS_ANALYTICS_EDA_REPORT**

  * Lightweight executive KPI summary
  * Core business performance indicators
  * High-level exploratory analysis

* **VW_BUSINESS_ANALYTICS_ADVANCED_EDA_REPORT**

  * Comprehensive executive reporting
  * Cross-domain business insights
  * Advanced KPI monitoring
  * Enterprise-level analytical summary

These reports serve as the primary data source for business dashboards and management reporting.

---

# 🎯 Pipeline Benefits

The layered architecture provides several advantages:

* Clear separation of responsibilities.
* Improved data quality and reliability.
* Scalable ETL process.
* Easier debugging and maintenance.
* Reusable business logic.
* Optimized analytical performance.
* Consistent reporting across the organization.

By progressing data through structured processing stages, the warehouse ensures that only validated, trusted, and business-ready information reaches the analytical and reporting layers.
# ✅ Data Quality Framework

## Overview

High-quality data is essential for reliable reporting and business decision-making. The Data Quality (DQ) Framework implemented in this project ensures that only validated, consistent, and business-compliant data progresses through the data warehouse pipeline.

All quality checks are performed within the **CLEAN** layer before data is loaded into the dimensional model.

The framework is designed to detect, validate, standardize, and reject records that violate predefined business rules.

---

# 🎯 Objectives

The Data Quality Framework is designed to:

* Improve data accuracy
* Eliminate duplicate records
* Maintain data consistency
* Enforce business validation rules
* Detect invalid or incomplete records
* Increase trust in analytical reporting
* Support maintainable ETL processes

---

# 🛡️ Validation Rules

The framework applies a series of validation rules to each dataset before loading into the GOLD layer.

## 1. Duplicate Detection

Duplicate records are identified and handled based on business logic.

Validation includes:

* Exact duplicate detection
* Conflicting duplicate detection
* Duplicate removal where applicable

---

## 2. Mandatory Field Validation

Ensures that required business attributes are populated.

Checks include:

* NULL values
* Blank values
* Missing mandatory fields

Records failing validation are excluded from downstream processing.

---

## 3. Data Standardization

Standardizes textual and formatting inconsistencies across datasets.

Examples include:

* Converting text to uppercase
* Removing leading and trailing spaces
* Eliminating extra whitespace
* Standardizing naming conventions

This ensures consistency across analytical datasets.

---

## 4. Data Type Validation

Ensures that incoming values conform to expected data types.

Examples:

* Integer validation
* Date validation
* Numeric validation
* Currency fields
* Decimal precision

---

## 5. Business Rule Validation

Business-specific rules are applied to ensure logical consistency.

Examples include:

* Valid order amounts
* Positive payment values
* Valid shipment dates
* Correct customer identifiers
* Acceptable status values

Only records satisfying business rules are promoted to trusted datasets.

---

# 🚫 Rejected Records

Records failing validation are isolated rather than silently discarded.

Benefits include:

* Easier troubleshooting
* Improved auditability
* Better data governance
* Root cause analysis
* Reprocessing capability

---

# 📋 Data Quality Process

```text
RAW Data
    │
    ▼
Format Validation
    │
    ▼
NULL / Blank Checks
    │
    ▼
Duplicate Detection
    │
    ▼
Business Rule Validation
    │
    ▼
Standardization
    │
    ▼
Valid Records ─────────► CLEAN Layer
    │
    ▼
Rejected Records
```

---

# 📊 Benefits

The Data Quality Framework provides several operational advantages:

* Improved data accuracy
* Increased reporting reliability
* Reduced manual data cleansing
* Consistent business definitions
* Enhanced analytical confidence
* Better governance and compliance
* Easier maintenance of ETL pipelines

---

# 🚀 Business Value

Implementing a structured Data Quality Framework ensures that business users and decision-makers work with trusted, validated, and standardized information.

This reduces reporting inconsistencies, minimizes operational risks, and improves the overall quality of business intelligence generated from the data warehouse.

The framework forms a critical foundation of the project's modern data warehousing architecture by ensuring that only high-quality data reaches the analytical and reporting layers.
# 📋 Audit Framework

## Overview

The Audit Framework provides end-to-end visibility into the execution of data warehouse processes. It records pipeline activity, data loads, SQL execution history, and file ingestion events, enabling monitoring, troubleshooting, and operational governance.

By maintaining detailed audit logs, the framework improves transparency, traceability, and reliability across the ETL pipeline.

---

# 🎯 Objectives

The Audit Framework is designed to:

* Monitor ETL execution
* Track data loading activities
* Maintain historical execution records
* Improve operational transparency
* Support troubleshooting and root cause analysis
* Enable pipeline monitoring
* Assist with compliance and governance

---

# 🏗️ Audit Architecture

The Audit schema stores metadata related to pipeline execution rather than business data.

Each audit table focuses on a specific aspect of the ETL process, allowing administrators and analysts to monitor warehouse activity efficiently.

---

# 📊 Audit Tables

## AUDIT_PIPELINE_RUNS

Tracks every execution of the ETL pipeline.

### Captured Information

* Pipeline Name
* Run Identifier
* Start Time
* End Time
* Execution Duration
* Pipeline Status
* Records Processed
* Error Messages (if applicable)

### Business Value

* Monitor pipeline health
* Measure execution performance
* Identify failed runs
* Support operational reporting

---

## AUDIT_TABLE_LOADS

Maintains a history of data loads performed on warehouse tables.

### Captured Information

* Target Table
* Load Timestamp
* Number of Records Loaded
* Number of Failed Records
* Load Status
* Source File or Source Table

### Business Value

* Verify successful data loads
* Measure daily processing volumes
* Support reconciliation activities
* Monitor warehouse growth

---

## AUDIT_SQL_QUERY_LOG

Stores metadata related to executed SQL operations.

### Captured Information

* Query Identifier
* SQL Statement
* Execution Time
* User
* Execution Status
* Duration

### Business Value

* Monitor SQL performance
* Troubleshoot failed queries
* Analyze warehouse workload
* Support query optimization

---

## AUDIT_FILE_INGESTION

Tracks files entering the warehouse.

### Captured Information

* File Name
* Source Location
* File Size
* Ingestion Timestamp
* Processing Status
* Number of Records Imported

### Business Value

* Validate incoming files
* Detect duplicate file loads
* Monitor ingestion history
* Improve data lineage

---

# 🔄 Audit Workflow

```text
Source Files
      │
      ▼
File Ingestion
      │
      ▼
AUDIT_FILE_INGESTION
      │
      ▼
Pipeline Execution
      │
      ▼
AUDIT_PIPELINE_RUNS
      │
      ▼
Table Loading
      │
      ▼
AUDIT_TABLE_LOADS
      │
      ▼
SQL Execution
      │
      ▼
AUDIT_SQL_QUERY_LOG
```

---

# 📈 Monitoring Capabilities

The Audit Framework enables continuous monitoring of warehouse operations, including:

* Pipeline execution status
* Data load history
* ETL execution duration
* Processing failures
* SQL execution tracking
* Data ingestion monitoring
* Operational reporting

---

# 💼 Business Benefits

The Audit Framework provides several operational advantages:

* End-to-end pipeline traceability
* Improved operational visibility
* Faster issue identification
* Simplified troubleshooting
* Historical execution tracking
* Better governance and compliance
* Enhanced reliability of ETL processes

---

# 🚀 Business Value

A robust Audit Framework is essential for maintaining a reliable and production-ready data warehouse. By capturing detailed operational metadata, the framework enables teams to monitor pipeline performance, identify failures quickly, validate data movement, and maintain confidence in the integrity of warehouse operations.

This framework complements the Data Quality process by ensuring that every stage of the ETL pipeline is measurable, traceable, and auditable, supporting long-term scalability and maintainability of the Snowflake data warehouse.
# 📚 Reference Data Framework

## Overview

The Reference Data Framework centralizes business master data used throughout the data warehouse. Instead of storing repetitive business values directly in transactional tables, standardized lookup tables are maintained to ensure consistency, improve data quality, and simplify maintenance.

The framework supports dimensional modeling by providing controlled business values that can be reused across ETL pipelines, analytical views, and reporting.

---

# 🎯 Objectives

The Reference Data Framework is designed to:

* Standardize business values across the warehouse.
* Reduce data redundancy.
* Improve data consistency.
* Simplify business rule validation.
* Support dimensional modeling.
* Enable easier maintenance of master data.
* Improve reporting accuracy.

---

# 🏛️ Reference Data Architecture

Reference tables contain relatively static business information that changes infrequently but is widely referenced throughout the warehouse.

These tables act as a single source of truth for standardized business attributes.

---

# 📋 Reference Tables

The project includes **20 master reference tables**.

| Category         | Reference Table         | Purpose                           |
| ---------------- | ----------------------- | --------------------------------- |
| Geography        | COUNTRY_MASTER          | Standard list of countries        |
| Geography        | STATE_MASTER            | Standard list of states/provinces |
| Geography        | CITY_MASTER             | Standard list of cities           |
| Payments         | PAYMENT_METHOD_MASTER   | Supported payment methods         |
| Shipping         | SHIPMENT_STATUS_MASTER  | Shipment status definitions       |
| Orders           | ORDER_STATUS_MASTER     | Order lifecycle statuses          |
| Products         | PRODUCT_CATEGORY_MASTER | Product category classification   |
| Finance          | CURRENCY_MASTER         | Supported currencies              |
| Human Resources  | EMPLOYEE_ROLE_MASTER    | Employee roles and designations   |
| Customer Service | RETURN_REASON_MASTER    | Standard return reasons           |
| Customers        | CUSTOMER_SEGMENT_MASTER | Customer segmentation categories  |
| Sales            | DISCOUNT_TYPE_MASTER    | Discount classifications          |
| Finance          | TAX_CATEGORY_MASTER     | Tax categories                    |
| Suppliers        | SUPPLIER_MASTER         | Supplier master information       |
| Products         | BRAND_MASTER            | Product brands                    |
| Logistics        | WAREHOUSE_MASTER        | Warehouse locations               |
| Geography        | REGION_MASTER           | Business regions                  |
| Shipping         | DELIVERY_TYPE_MASTER    | Delivery methods                  |
| Customers        | MEMBERSHIP_TYPE_MASTER  | Customer membership tiers         |
| Orders           | ORDER_PRIORITY_MASTER   | Order priority levels             |

---

# 🔄 Reference Data Usage

Reference tables are integrated throughout the warehouse to ensure standardized values are used during data processing and reporting.

```text
Reference Tables
        │
        ▼
Business Validation
        │
        ▼
CLEAN Layer
        │
        ▼
Dimension Tables
        │
        ▼
Fact Tables
        │
        ▼
Analytics Views
        │
        ▼
Business Reports
```

---

# ⚙️ Benefits of Reference Data

The implementation of centralized reference data provides several advantages:

* Eliminates duplicate business values.
* Standardizes reporting terminology.
* Improves ETL validation.
* Simplifies maintenance of business rules.
* Reduces data inconsistencies.
* Supports scalable warehouse design.
* Improves data governance.

---

# 📊 Business Applications

Reference data is used throughout the warehouse for:

* Customer classification
* Product categorization
* Payment processing
* Order status management
* Shipment tracking
* Supplier management
* Regional reporting
* Financial reporting
* Inventory management
* Business analytics

---

# 🚀 Business Value

A centralized Reference Data Framework ensures that business entities and classifications remain consistent across every layer of the data warehouse. By maintaining standardized lookup tables, the project improves data quality, reduces redundancy, simplifies ETL processing, and enhances the accuracy of analytical reporting.

This framework provides a strong foundation for scalable analytics and supports reliable decision-making by ensuring that all business processes operate from a consistent and governed set of master data.
# ⭐ Dimensional Modeling (Star Schema)

## Overview

The GOLD layer of the data warehouse is designed using a **Star Schema**, a dimensional modeling technique widely adopted in business intelligence and analytics. The model separates descriptive business entities into **dimension tables** and measurable business events into **fact tables**, enabling efficient querying, simplified reporting, and scalable analytical workloads.

This design supports high-performance aggregation and provides a business-friendly structure for dashboards, KPI reporting, and exploratory analysis.

---

# 🎯 Objectives

The Star Schema was implemented to:

* Optimize analytical query performance.
* Simplify business reporting.
* Organize data into measurable facts and descriptive dimensions.
* Support scalable business intelligence solutions.
* Reduce query complexity.
* Enable efficient data aggregation.

---

# 🏛️ Star Schema Architecture

```text
                    DIM_DATE
                       │
                       │
DIM_CUSTOMERS ───── FACT_ORDERS ───── DIM_PRODUCTS
                       │
                       │
                 FACT_PAYMENTS
                       │
                 DIM_PAYMENTS
                       │
                 FACT_SHIPMENTS
                       │
                 DIM_SHIPMENTS
                       │
            FACT_EMPLOYEE_ACTIVITY
                       │
                 DIM_EMPLOYEES
```

The fact tables store measurable business transactions, while the dimension tables provide descriptive business attributes.

---

# 📋 Dimension Tables

Dimension tables describe business entities and provide context for analytical reporting.

| Dimension         | Purpose                                       |
| ----------------- | --------------------------------------------- |
| **DIM_CUSTOMERS** | Customer information and attributes           |
| **DIM_PRODUCTS**  | Product details and classifications           |
| **DIM_EMPLOYEES** | Employee information and organizational roles |
| **DIM_PAYMENTS**  | Payment method and transaction attributes     |
| **DIM_SHIPMENTS** | Shipment information and delivery details     |
| **DIM_DATE**      | Calendar attributes for time-based analysis   |

---

# 📊 Fact Tables

Fact tables store measurable business events and quantitative metrics.

| Fact Table                 | Business Process                |
| -------------------------- | ------------------------------- |
| **FACT_ORDERS**            | Customer order transactions     |
| **FACT_PAYMENTS**          | Payment transactions            |
| **FACT_SHIPMENTS**         | Shipment activities             |
| **FACT_SALES**             | Sales performance metrics       |
| **FACT_EMPLOYEE_ACTIVITY** | Employee operational activities |

---

# 🔄 Relationships

The dimensional model follows a **one-to-many relationship** pattern.

* One customer can place multiple orders.
* One product can appear in many sales transactions.
* One payment method can be associated with multiple payments.
* One shipment record can relate to multiple delivery events.
* One calendar date can be referenced by numerous business transactions.

This relationship structure minimizes redundancy while supporting efficient analytical queries.

---

# 📈 Business Capabilities

The Star Schema enables analysis across multiple business domains, including:

### Sales Analytics

* Revenue trends
* Product performance
* Average order value
* Category-wise revenue

### Customer Analytics

* Customer lifetime value
* Repeat purchase rate
* Customer churn
* Top customers

### Order Analytics

* Order volume
* Cancellation trends
* Fulfillment performance
* Delivery analysis

### Inventory Analytics

* Stock availability
* High-margin products
* Supplier performance
* Inventory turnover

### Finance Analytics

* Payment success rate
* Fraud detection
* Logistics cost
* Marketing ROI

---

# ⚡ Design Advantages

The Star Schema provides several technical and business benefits:

* Simplified SQL queries.
* Faster analytical performance.
* Efficient aggregations.
* Improved dashboard responsiveness.
* Reduced query complexity.
* Business-friendly data model.
* Scalable architecture for future expansion.

---

# 🚀 Business Value

The dimensional model transforms cleansed operational data into an analytics-ready structure optimized for decision-making. By separating descriptive dimensions from measurable facts, the warehouse supports efficient reporting, consistent KPI calculations, and flexible exploration of business performance across Sales, Customers, Operations, Inventory, and Finance.

The Star Schema serves as the analytical foundation of the project, enabling downstream business intelligence solutions and executive reporting while maintaining simplicity, scalability, and high query performance.
# 📊 Business Analytics Layer

## Overview

The Business Analytics Layer represents the final analytical component of the data warehouse. It transforms dimensional data into reusable business insights through a collection of SQL views designed for reporting, KPI monitoring, and decision support.

Rather than querying fact and dimension tables directly, business users can access pre-built analytical views that encapsulate business logic and provide consistent metrics across the organization.

The project includes **57+ analytical views** covering Sales, Customers, Orders, Inventory, Finance, and Executive Reporting.

---

# 🎯 Objectives

The Analytics Layer is designed to:

* Deliver business-ready datasets.
* Simplify complex analytical queries.
* Standardize KPI calculations.
* Support dashboards and BI tools.
* Improve reporting consistency.
* Enable reusable business logic.
* Reduce query complexity for end users.

---

# 🏗️ Analytics Architecture

```text
Fact & Dimension Tables
           │
           ▼
Business Analytics Views
           │
           ▼
Domain-Specific KPIs
           │
           ▼
Executive EDA Reports
           │
           ▼
Business Dashboards
```

The Analytics Layer sits above the dimensional model and serves as the primary data source for reporting and visualization.

---

# 📂 Analytics Domains

The analytical views are organized into functional business domains to support different areas of business analysis.

## 1. Sales & Revenue Analytics

Provides insights into revenue generation and sales performance.

### Example Metrics

* Top Products Revenue
* Monthly Revenue
* Revenue by Category
* Average Order Value
* Promotion Impact

### Business Value

* Identify revenue trends
* Measure product performance
* Evaluate sales growth
* Analyze customer spending patterns

---

## 2. Customer Analytics

Focuses on customer behavior, acquisition, and retention.

### Example Metrics

* Top Customers
* Customer Lifetime Value
* Repeat Purchase Rate
* Customer Churn
* New Customers

### Business Value

* Understand customer loyalty
* Identify valuable customers
* Measure retention
* Monitor customer growth

---

## 3. Orders & Fulfillment Analytics

Measures operational efficiency throughout the order lifecycle.

### Example Metrics

* Order Cancellations
* Late Deliveries
* Return Reasons
* Payment Mismatches

### Business Value

* Improve fulfillment efficiency
* Reduce cancellations
* Monitor delivery performance
* Analyze operational issues

---

## 4. Inventory & Supplier Analytics

Provides visibility into inventory utilization and supplier performance.

### Example Metrics

* Out-of-Stock Products
* High Margin Products
* Stock Turnover Ratio
* Supplier Performance

### Business Value

* Optimize inventory levels
* Improve supplier evaluation
* Reduce stock shortages
* Increase profitability

---

## 5. Finance & Risk Analytics

Monitors financial performance and operational risk.

### Example Metrics

* Payment Success Rate
* Fraud Detection
* Logistics Cost
* Campaign ROI
* Refund Processing Time
* Compliance Monitoring

### Business Value

* Improve payment reliability
* Detect fraudulent activity
* Monitor operational costs
* Evaluate marketing effectiveness

---

# 📈 Executive Reporting

The Analytics Layer culminates in two executive reporting views:

### VW_BUSINESS_ANALYTICS_EDA_REPORT

A concise executive report providing key business KPIs for quick exploratory analysis and business health monitoring.

### VW_BUSINESS_ANALYTICS_ADVANCED_EDA_REPORT

A comprehensive executive reporting view that consolidates advanced KPIs across all business domains, offering deeper insights into organizational performance.

---

# ⚙️ Design Characteristics

The Analytics Layer is built using reusable SQL views that encapsulate business logic and calculations.

Key characteristics include:

* Domain-based organization
* Reusable analytical views
* Standardized KPI calculations
* Consistent business definitions
* Optimized reporting queries
* Modular and maintainable design
* Scalable architecture for future metrics

---

# 💼 Business Benefits

The Analytics Layer delivers significant value by:

* Simplifying business reporting
* Reducing SQL complexity for analysts
* Ensuring KPI consistency
* Accelerating dashboard development
* Supporting executive decision-making
* Improving analytical productivity
* Providing reusable reporting assets

---

# 🚀 Business Value

The Business Analytics Layer transforms the dimensional model into actionable business intelligence. By organizing reusable analytical views into domain-specific categories and exposing executive-level reporting views, the project enables stakeholders to monitor organizational performance efficiently and consistently.

This layer bridges the gap between raw business data and strategic decision-making, making it the primary interface for reporting, dashboards, exploratory analysis, and business intelligence applications.
# 🚀 How to Run the Project

## Overview

This section provides the steps required to deploy and execute the Snowflake E-Commerce Data Warehouse. The scripts are organized in execution order to ensure all database objects are created correctly and dependencies are satisfied.

The project follows a layered architecture where each stage builds upon the previous one, ultimately producing business-ready analytical views and executive reports.

---

# 📋 Prerequisites

Before running the project, ensure the following requirements are met:

* Snowflake Account
* SQL Worksheet or Snowflake Snowsight
* Appropriate database creation privileges
* Warehouse with sufficient compute resources
* Sample datasets (CSV or equivalent source files)

---

# 📂 Execution Order

Execute the SQL scripts in the following sequence.

| Step | Script                                     | Purpose                                        |
| ---- | ------------------------------------------ | ---------------------------------------------- |
| 1    | **Database Setup**                         | Creates the database and schemas               |
| 2    | **RAW Layer**                              | Creates raw data tables                        |
| 3    | **STAGE Layer**                            | Creates staging tables                         |
| 4    | **CLEAN Layer**                            | Creates validated and standardized tables      |
| 5    | **REFERENCE Layer**                        | Creates master/reference tables                |
| 6    | **Data Quality Framework**                 | Implements validation and quality rules        |
| 7    | **Audit Framework**                        | Creates audit and monitoring tables            |
| 8    | **GOLD Layer**                             | Builds dimension and fact tables               |
| 9    | **Analytics Views**                        | Creates reusable business analytics views      |
| 10   | **Business Analytics EDA Report**          | Creates executive KPI summary view             |
| 11   | **Advanced Business Analytics EDA Report** | Creates comprehensive executive reporting view |

---

# ⚙️ Deployment Workflow

```text
Create Database
        │
        ▼
Create Schemas
        │
        ▼
Create RAW Tables
        │
        ▼
Load Source Data
        │
        ▼
Create STAGE Tables
        │
        ▼
Execute Data Cleaning
        │
        ▼
Create CLEAN Tables
        │
        ▼
Build Reference Data
        │
        ▼
Create Audit Framework
        │
        ▼
Build Star Schema
        │
        ▼
Create Analytics Views
        │
        ▼
Generate Executive Reports
```

---

# 📥 Step 1 – Create Database

Execute the database setup script to create:

* Database
* Schemas
* Warehouse objects (if applicable)

Schemas created include:

* RAW
* STAGE
* CLEAN
* GOLD
* REFERENCE
* DQ
* AUDIT
* ANALYTICS

---

# 📥 Step 2 – Create RAW Layer

Execute the RAW layer script.

This creates the landing tables used to store source data exactly as received.

Load your source datasets into the RAW tables after creation.

---

# 📥 Step 3 – Build STAGE Layer

Execute the STAGE layer script.

This prepares raw data by:

* Standardizing formats
* Converting data types
* Preparing records for validation

---

# 📥 Step 4 – Execute Data Quality Processing

Run the Data Quality Framework.

Validation includes:

* Duplicate detection
* NULL validation
* Blank value detection
* Business rule validation
* Data standardization

Only valid records continue to the CLEAN layer.

---

# 📥 Step 5 – Create CLEAN Layer

Execute the CLEAN layer script.

This creates trusted datasets suitable for dimensional modeling.

---

# 📥 Step 6 – Create Reference Data

Execute the Reference Data script.

This populates lookup and master tables used throughout the warehouse.

---

# 📥 Step 7 – Build Audit Framework

Execute the Audit Framework script.

Audit tables begin tracking:

* Pipeline execution
* Data loads
* SQL activity
* File ingestion

---

# 📥 Step 8 – Build the GOLD Layer

Execute the GOLD layer script.

This creates:

### Dimension Tables

* Customer
* Product
* Employee
* Payment
* Shipment
* Date

### Fact Tables

* Orders
* Sales
* Payments
* Shipments
* Employee Activity

These tables form the analytical model of the warehouse.

---

# 📥 Step 9 – Create Analytics Views

Execute the Analytics Views script.

This generates reusable SQL views that calculate KPIs and business metrics across multiple domains.

---

# 📥 Step 10 – Create Executive Reports

Finally, execute:

* **VW_BUSINESS_ANALYTICS_EDA_REPORT**
* **VW_BUSINESS_ANALYTICS_ADVANCED_EDA_REPORT**

These views consolidate KPIs into executive-ready reports suitable for dashboards and business intelligence tools.

---

# 📊 Expected Result

After completing all steps, the project will include:

* Multi-layer Data Warehouse
* Data Quality Framework
* Audit Framework
* Reference Data
* Star Schema
* 57+ Business Analytics Views
* Executive KPI Reports
* Production-style Snowflake Architecture

---

# 🎯 Recommended Next Steps

Once deployment is complete, the analytical views can be connected to visualization tools such as:

* Power BI
* Tableau
* Microsoft Excel
* Any SQL-compatible Business Intelligence platform

This enables interactive dashboards, KPI monitoring, and executive reporting using the curated datasets produced by the warehouse.

---

# ✅ Deployment Summary

By following the execution sequence outlined above, the complete Snowflake E-Commerce Data Warehouse can be successfully deployed from database creation through to executive reporting. The modular script organization ensures reproducibility, maintainability, and ease of extension, making the project suitable as both a learning resource and a portfolio demonstration of modern Analytics Engineering practices.
# 📸 Screenshots

## Overview

The screenshots included in this repository provide a visual walkthrough of the Snowflake Data Warehouse implementation. They illustrate the database architecture, schema organization, dimensional model, analytical views, and reporting capabilities, enabling readers to quickly understand the overall project structure.

The images serve as supporting documentation and demonstrate the successful implementation of each major component of the warehouse.

---

# 🗂️ Recommended Screenshots

The following screenshots are recommended for inclusion in the `/Screenshots` directory.

| Screenshot                                 | Description                                                                               |
| ------------------------------------------ | ----------------------------------------------------------------------------------------- |
| **Database Overview**                      | Displays the complete Snowflake database structure.                                       |
| **Schema Explorer**                        | Shows all schemas including RAW, STAGE, CLEAN, GOLD, REFERENCE, DQ, AUDIT, and ANALYTICS. |
| **RAW Layer**                              | Shows the raw source tables before processing.                                            |
| **STAGE Layer**                            | Displays staging tables used for initial transformations.                                 |
| **CLEAN Layer**                            | Demonstrates validated and standardized datasets.                                         |
| **GOLD Layer**                             | Shows dimension and fact tables implementing the Star Schema.                             |
| **Reference Schema**                       | Displays master/reference tables.                                                         |
| **Audit Schema**                           | Shows audit tables used for monitoring pipeline execution.                                |
| **Analytics Views**                        | Displays the collection of business analytical views.                                     |
| **Business Analytics EDA Report**          | Shows the output of the executive KPI report.                                             |
| **Advanced Business Analytics EDA Report** | Displays the advanced executive reporting view.                                           |
| **Architecture Diagram**                   | Overall warehouse architecture (RAW → STAGE → CLEAN → GOLD).                              |
| **Star Schema Diagram**                    | Visual representation of the dimensional model.                                           |

---

# 🏗️ Architecture Diagram

Include a diagram illustrating the complete warehouse architecture.

Example:

```text
Source Data
      │
      ▼
RAW Layer
      │
      ▼
STAGE Layer
      │
      ▼
CLEAN Layer
      │
      ▼
GOLD Layer
      │
      ▼
Analytics Views
      │
      ▼
EDA Reports
```

**Suggested filename**

```
architecture_diagram.png
```

---

# ⭐ Star Schema Diagram

Include the dimensional model showing relationships between fact and dimension tables.

Recommended filename:

```
star_schema.png
```

---

# 📊 Analytics Layer

Capture screenshots showing the Analytics schema with the business analytical views.

Suggested filename:

```
analytics_views.png
```

---

# 📈 Executive Reports

Include screenshots of both reporting views.

### Business Analytics EDA Report

```
business_analytics_eda_report.png
```

### Advanced Business Analytics EDA Report

```
advanced_business_analytics_eda_report.png
```

---

# 📂 Recommended Folder Structure

```text
Screenshots/
│
├── architecture_diagram.png
├── database_overview.png
├── schema_explorer.png
├── raw_layer.png
├── stage_layer.png
├── clean_layer.png
├── gold_layer.png
├── star_schema.png
├── reference_schema.png
├── audit_schema.png
├── analytics_views.png
├── business_analytics_eda_report.png
└── advanced_business_analytics_eda_report.png
```

---

# 💡 Tips for High-Quality Screenshots

To ensure a professional presentation:

* Use Snowflake Snowsight in full-screen mode.
* Capture images at high resolution.
* Keep the interface clean and uncluttered.
* Use consistent zoom levels across screenshots.
* Highlight important objects without exposing sensitive information.
* Name files consistently using lowercase and underscores.

---

# 🚀 Why Screenshots Matter

Visual documentation allows recruiters, hiring managers, and collaborators to understand the project at a glance without executing the code. They complement the SQL scripts and documentation by demonstrating the implemented architecture and validating the successful deployment of the data warehouse.

Well-organized screenshots significantly improve the readability and professionalism of the repository, making it easier for others to evaluate the project's scope and quality.
# 💼 Skills Demonstrated

## Overview

This project demonstrates the practical application of modern **Data Warehousing**, **Analytics Engineering**, and **Business Intelligence** concepts using Snowflake and SQL. It showcases the complete lifecycle of building an analytical data warehouse—from raw data ingestion to executive-level reporting.

The implementation emphasizes scalable architecture, data quality, dimensional modeling, and reusable analytics, reflecting industry best practices.

---

# 🛠️ Core Technical Skills

## Snowflake Data Warehousing

* Database and schema design
* Multi-schema architecture
* Table creation and management
* SQL-based ETL implementation
* Data warehouse development

---

## SQL Development

The project extensively utilizes SQL for:

* Data Definition Language (DDL)
* Data Manipulation Language (DML)
* Data Transformation
* Analytical Queries
* View Development
* Aggregations
* Conditional Logic
* Joins
* Common Table Expressions (CTEs)
* Window Functions (where applicable)

---

## ETL Development

Designed and implemented a structured ETL pipeline following industry-standard practices.

Demonstrated skills include:

* Data ingestion
* Data transformation
* Data cleansing
* Business rule implementation
* Data validation
* Data loading

---

# 🏗️ Data Warehousing

Designed a modern layered architecture including:

* RAW Layer
* STAGE Layer
* CLEAN Layer
* GOLD Layer

Demonstrated understanding of:

* Data lifecycle management
* Layered ETL architecture
* Separation of concerns
* Analytical data modeling

---

# ⭐ Dimensional Modeling

Implemented a Star Schema consisting of:

### Dimension Tables

* Customer
* Product
* Employee
* Payment
* Shipment
* Date

### Fact Tables

* Orders
* Payments
* Shipments
* Sales
* Employee Activity

Skills demonstrated include:

* Fact and Dimension identification
* Grain definition
* Relationship design
* Analytical modeling

---

# ✅ Data Quality Engineering

Implemented a reusable Data Quality Framework featuring:

* Duplicate detection
* Mandatory field validation
* NULL handling
* Data standardization
* Business rule validation
* Rejected record management

---

# 📋 Audit & Monitoring

Developed an Audit Framework capable of monitoring:

* Pipeline execution
* Table loads
* SQL execution
* File ingestion

This demonstrates understanding of operational monitoring and ETL governance.

---

# 📚 Reference Data Management

Designed centralized master data tables to support:

* Standardized business values
* Lookup management
* Data consistency
* Business validation

---

# 📊 Business Analytics

Developed **57+ analytical SQL views** covering multiple business domains:

* Sales & Revenue
* Customer Analytics
* Orders & Fulfillment
* Inventory & Suppliers
* Finance & Risk

These views transform transactional data into reusable business insights.

---

# 📈 Executive Reporting

Built executive-level reporting views including:

* Business Analytics EDA Report
* Advanced Business Analytics EDA Report

These reports consolidate KPIs into unified datasets suitable for dashboards and business intelligence platforms.

---

# 📄 Documentation

Prepared comprehensive project documentation covering:

* Database architecture
* Data pipeline
* Data Quality Framework
* Audit Framework
* Reference Data
* Star Schema
* Analytics Layer
* Executive Reports
* Deployment Guide

---

# 🔧 Tools & Technologies

| Category             | Technologies  |
| -------------------- | ------------- |
| Cloud Data Warehouse | Snowflake     |
| Query Language       | SQL           |
| Data Modeling        | Star Schema   |
| ETL                  | SQL-based ETL |
| Documentation        | Markdown, PDF |
| Version Control      | Git, GitHub   |

---

# 🎯 Key Competencies Demonstrated

* Data Warehousing
* Analytics Engineering
* SQL Development
* ETL Pipeline Design
* Data Modeling
* Data Quality Management
* Audit & Monitoring
* Business Analytics
* Executive Reporting
* Documentation
* Database Design
* Business Intelligence

---

# 🚀 Project Outcome

This project demonstrates the ability to design and implement a production-style Snowflake Data Warehouse using modern Analytics Engineering practices. It integrates layered ETL architecture, dimensional modeling, data quality controls, audit mechanisms, and business analytics into a cohesive solution that supports reliable reporting and informed decision-making.

The breadth of the implementation highlights practical experience in building scalable analytical systems and showcases skills directly applicable to Data Analyst, Business Intelligence Analyst, Analytics Engineer, and Data Warehouse Developer roles.
# 🚀 Future Enhancements

## Overview

This project provides a strong foundation for a modern Snowflake-based analytical data warehouse. While the current implementation demonstrates end-to-end data warehousing principles, several enhancements can further improve automation, scalability, governance, and business intelligence capabilities.

---

## Planned Enhancements

### Automated Data Ingestion

* Implement Snowpipe for continuous data ingestion.
* Enable near real-time data availability.
* Reduce manual loading processes.

### Incremental Data Processing

* Implement Snowflake Streams and Tasks.
* Process only new or modified records.
* Improve ETL efficiency and reduce compute costs.

### Data Transformation Framework

* Integrate dbt (Data Build Tool).
* Modularize SQL transformations.
* Introduce automated testing and documentation.

### Business Intelligence Dashboard

* Connect the warehouse to Power BI or Tableau.
* Develop interactive dashboards and KPI visualizations.
* Enable self-service business analytics.

### CI/CD Pipeline

* Automate deployment using GitHub Actions.
* Validate SQL scripts before deployment.
* Support continuous integration and continuous delivery.

### Data Lineage & Metadata

* Track data movement across warehouse layers.
* Implement metadata cataloging.
* Improve governance and impact analysis.

### Performance Optimization

Future improvements may include:

* Clustering Keys
* Materialized Views
* Query Performance Optimization
* Warehouse Cost Optimization

### Security Enhancements

Potential security improvements include:

* Role-Based Access Control (RBAC)
* Dynamic Data Masking
* Row Access Policies
* Secure Views
* Object Tagging

---

## Long-Term Vision

The long-term objective is to evolve this project into a production-ready Analytics Engineering platform capable of supporting enterprise-scale reporting, governance, automation, and business intelligence while following modern cloud data warehousing best practices.
# 📊 Project Statistics

## Overview

The following statistics summarize the overall scope and implementation of the Snowflake E-Commerce Data Warehouse.

| Component              |                            Count |
| ---------------------- | -------------------------------: |
| Database               |                                1 |
| Schemas                |                                8 |
| RAW Tables             |                                6 |
| STAGE Tables           |                                6 |
| CLEAN Tables           |                                6 |
| Reference Tables       |                               20 |
| Dimension Tables       |                                6 |
| Fact Tables            |                                5 |
| Audit Tables           |                                4 |
| Data Quality Framework |                                1 |
| Analytics Views        |                              57+ |
| Executive Reports      |                                2 |
| Documentation Files    |                              10+ |
| SQL Scripts            | 50+ *(Update with actual count)* |

---

## Architecture Summary

```text
Source Data
      │
      ▼
RAW Layer
      │
      ▼
STAGE Layer
      │
      ▼
CLEAN Layer
      │
      ▼
GOLD Layer
      │
      ▼
Business Analytics Views
      │
      ▼
Executive EDA Reports
```

---

## Project Highlights

* End-to-End Snowflake Data Warehouse
* Layered ETL Architecture (RAW → STAGE → CLEAN → GOLD)
* Data Quality Framework
* Audit & Monitoring Framework
* Reference Data Management
* Star Schema Design
* 57+ Business Analytics Views
* Executive Analytics Reports
* Comprehensive Technical Documentation
* GitHub Portfolio Ready

---

## Outcome

This project demonstrates the design and implementation of a scalable, production-inspired analytical data warehouse capable of supporting reliable business reporting, KPI monitoring, and decision-making through reusable SQL components and modern data warehousing practices.
# 🎯 Conclusion

## Overview

This project demonstrates the complete design and implementation of a modern Snowflake Data Warehouse for an e-commerce business using industry-inspired data warehousing and analytics engineering practices.

The solution encompasses the full data lifecycle—from raw data ingestion and transformation to dimensional modeling, business analytics, and executive reporting—while emphasizing scalability, maintainability, and data quality.

---

## Key Achievements

Throughout this project, the following components were successfully implemented:

* Multi-layer Data Warehouse Architecture (RAW → STAGE → CLEAN → GOLD)
* SQL-Based ETL Pipeline
* Data Quality Framework
* Audit & Monitoring Framework
* Reference Data Management
* Star Schema Dimensional Model
* 57+ Business Analytics Views
* Executive Business Analytics Reports
* Comprehensive Technical Documentation
* GitHub Portfolio Repository

---

## Learning Outcomes

This project strengthened practical knowledge in:

* Snowflake Data Warehousing
* SQL Development
* Analytics Engineering
* ETL Pipeline Design
* Dimensional Modeling
* Business Intelligence
* Data Quality Management
* Audit & Monitoring
* Technical Documentation
* Git & GitHub Version Control

---

## Final Remarks

This repository represents a practical implementation of modern data warehousing concepts using Snowflake and SQL. It demonstrates not only technical proficiency in database development and analytics but also the ability to design, document, and organize a complete analytical solution following industry best practices.

The project serves as both a learning milestone and a professional portfolio artifact, showcasing the end-to-end development of a production-style analytical data warehouse.

Thank you for taking the time to explore this project. Feedback, suggestions, and contributions are always welcome.

