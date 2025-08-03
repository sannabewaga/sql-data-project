# SQL data warehousing and analysis project


<img width="1705" height="865" alt="image" src="https://github.com/user-attachments/assets/86473dea-c327-41a3-9c9d-aa3182dc72aa" />


# 🏗️ SQL Data Warehousing Project

This project demonstrates the implementation of a Data Warehouse using the **Medallion Architecture** (Bronze, Silver, and Gold layers) with **pure SQL**—no external visualization tools like Power BI were used. The dataset was sourced from CRM and ERP systems in the form of CSV files.

---

## 🧱 Architecture Overview

### ➤ **Bronze Layer: Raw Data**
- **Object Type**: Tables
- **Load Method**: Batch Processing, Full Load, Truncate & Insert
- **Transformations**: None
- **Data Model**: None (as-is)

### ➤ **Silver Layer: Cleaned & Standardized Data**
- **Object Type**: Tables
- **Load Method**: Batch Processing, Full Load, Truncate & Insert
- **Transformations**:
  - Data Cleansing
  - Standardization
  - Normalization
  - Derived Columns
  - Enrichment
- **Data Model**: None (as-is)

### ➤ **Gold Layer: Business-Ready Data**
- **Object Type**: Views
- **Load Method**: No Load (views only)
- **Transformations**:
  - Data Integration
  - Aggregations
  - Business Logic
- **Data Model**:
  - Star Schema
  - Flat Tables
  - Aggregated Tables

---

## 🔍 Queries & Analytics Performed

- Top-selling products by revenue
- Sales distribution by product category
- Customer segmentation and behavior analysis
- Revenue trends and performance metrics

All analytics were performed using **custom SQL queries** over the Gold Layer.

---

## 📂 Data Source

- **Format**: CSV Files
- **Interface**: Files in Folders (manual ingestion)
- **Systems**: CRM and ERP

---

## ⚙️ Tools & Technologies

- **SQL Server** (for data storage, processing, and querying)
- **Stored Procedures** for orchestration
- **Medallion Architecture** for layering data transformations

---

## 🚫 No Visual BI Used

This project focused **purely on data engineering and analysis with SQL**. No external BI/reporting tools like Power BI or Tableau were used.

---

## 📊 Output & Use Cases

- Business insights directly from SQL queries
- Ready-to-use Gold Layer for:
  - BI Dashboards
  - Ad-hoc SQL Queries
  - Machine Learning Pipelines

---

## 📌 Summary

This project highlights the importance of well-structured data layers in a modern data pipeline using only SQL. It demonstrates how raw data can be cleaned, transformed, and served for analytical use cases without external visualization layers.

---


