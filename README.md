# E-Commerce Customer Shopping Behavior Analysis

Analyzing customer purchasing patterns and revenue trends to support data-driven business decisions using SQL, Python, and Tableau.

---

## 🛠 Tools & Technologies

![Python](https://img.shields.io/badge/Python-Analytics-blue?logo=python)
![SQL](https://img.shields.io/badge/SQL-PostgreSQL-orange?logo=postgresql)
![Tableau](https://img.shields.io/badge/Tableau-Dashboard-blue?logo=tableau)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-black?logo=pandas)
![NumPy](https://img.shields.io/badge/NumPy-Numerical%20Computing-blue?logo=numpy)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-orange)
![Seaborn](https://img.shields.io/badge/Seaborn-Statistical%20Visualization-green)
![Excel](https://img.shields.io/badge/Excel-Data%20Preparation-green?logo=microsoft-excel)

---

## 📌 Table of Contents

- [Overview](#overview)
- [Business Problem](#business-problem)
- [Dataset](#dataset)
- [Tools & Technologies](#tools--technologies)
- [Project Structure](#project-structure)
- [Data Cleaning & Preparation](#data-cleaning--preparation)
- [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)
- [Research Questions & Key Findings](#research-questions--key-findings)
- [Dashboard](#dashboard)
- [Dashboard Preview Images](#dashboard-preview-images)
- [How to Run This Project](#how-to-run-this-project)
- [Final Recommendations](#final-recommendations)
- [Author & Contact](#author--contact)

---

## Overview

This project analyzes e-commerce transactional data to understand customer purchasing behavior, revenue distribution, and product category performance.

A complete analytics workflow was implemented using SQL for data preparation, Python for validation and statistical checks, and Tableau for interactive visualization dashboards.

The objective of the project is to convert raw operational data into actionable business insights that support marketing strategy, inventory planning, and revenue optimization.

---

## Business Problem

E-commerce businesses generate large volumes of transactional data but often struggle to extract meaningful insights from it.

This project addresses the following business challenges:

- Identify high-value customers contributing significantly to revenue
- Understand category-level product performance
- Analyze country-wise revenue distribution
- Detect seasonal revenue trends and growth patterns
- Transform raw sales data into strategic insights for decision making

The goal is to enable data-driven business strategy and improve operational efficiency.

---

## Dataset

The dataset used in this project contains transactional e-commerce records.

### Dataset Details

Source: Kaggle  
Records: 700 rows  
Variables: 12 columns  
Format: CSV  

Key variables include:

- Invoice Number
- Unit Price
- Quantity
- Order Value
- Country
- Invoice Date
- Major Category
- Minor Category
- Product Description

These variables enable customer, product, and geographical sales analysis.

---

## Tools & Technologies

The project uses a modern data analytics stack:

### SQL (PostgreSQL)

- Data cleaning
- Feature engineering
- Aggregations using SUM() and GROUP BY

### Python

- Pandas
- NumPy
- Matplotlib
- Seaborn
- IQR method for outlier detection

### Tableau

- Interactive dashboard
- KPI visualization
- Category and country insights

### Microsoft Excel

- Initial data exploration

### GitHub

- Project version control

---
## Project Structure

```
Ecommerce_Sales_Analytics_Project
│
├── README.md
├── E-Commerce Customer Report.pdf
├── E-Commerce_Presentation.pdf
│
├── notebooks
│   ├── data_cleaning_and_eda.ipynb
│   └── outlier_detection_iqr.ipynb
│
├── sql
│   └── ecommerce_analysis_queries.sql
│
├── dashboard
│   └── ecommerce_sales_dashboard.twb
│
└── dataset
    └── ecommerce_dataset.csv
```
---

## Data Cleaning & Preparation

The dataset was processed through multiple validation and cleaning steps.

Key steps performed:

- Verified total records using SQL COUNT()
- Checked duplicate transactions using GROUP BY and HAVING
- Confirmed no NULL values exist in the dataset
- Ensured correct data types and schema consistency

Created a Revenue column using:
Revenue = Unit Price × Quantity


Applied IQR (Interquartile Range) method in Python to detect and remove outliers from order value distribution.

These steps ensured the dataset was clean and ready for reliable analysis.

---

## Exploratory Data Analysis (EDA)

Exploratory analysis was conducted to understand sales patterns and customer purchasing behavior.

### Revenue Distribution

- Identified overall revenue spread across transactions
- Detected high-value purchase ranges
- Evaluated variability in order values

### Category Performance

- Compared revenue across product categories
- Identified Kitchen & Garden as dominant categories

### Geographic Analysis

- Evaluated revenue contribution by country
- Identified key international markets

### Customer Behavior

- Identified high-value customers
- Analyzed purchasing patterns across categories

These analyses provided the foundation for business insights and dashboard creation.

---

## Research Questions & Key Findings

### Revenue Performance

Total Revenue: $22.4K  
Total Orders: 549  
Average Order Value (AOV): $40.77  

### Category Performance

- Kitchen and Garden categories dominate revenue share
- Sales follow a semi-Pareto pattern, where a few categories contribute most revenue.

### Geographic Insights

- Australia (~$6.3K) is the highest revenue contributor
- France and United Kingdom are also major markets
- Hong Kong shows the highest Average Order Value (~$237)

### Revenue Trends

- Revenue shows seasonal volatility
- Peak months exceed $2.5K
- Some months show MoM growth above 300%

### Product Concentration

A small set of top-selling products generates a large share of revenue.

These findings highlight revenue concentration patterns and opportunities for business optimization.

---

## Dashboard

The interactive Tableau dashboard provides a business-level overview of the e-commerce dataset.

Dashboard features include:

- Revenue KPIs
- Monthly revenue trends
- Category performance analysis
- Country-wise revenue insights
- Product-level performance
- Customer purchasing behavior analysis

Key metrics visualized:

- Total Revenue
- Average Order Value
- Total Orders
- Total Quantity Sold

---

## Dashboard Preview Images

### E-Commerce Sales Summary

<!-- Add dashboard image here -->
![Dashboard Summary](images/dashboard_summary.png)

### Category & Product Performance Insights

<!-- Add dashboard image here -->
![Category Insights](images/category_product_insights.png)

### Category Revenue Breakdown & Country Insights

<!-- Add dashboard image here -->
![Country Insights](images/country_revenue_insights.png)

---

## How to Run This Project

### Clone the repository
git clone https://github.com/yourusername/ecommerce-sales-analysis.git

### Load dataset

Place the CSV dataset into the `dataset/` folder.

### Run SQL queries

Execute SQL scripts to perform cleaning and feature engineering.

### Run Python notebooks

Open the notebooks and run:

- Data cleaning
- IQR outlier detection
- Exploratory data analysis

### Open Tableau Dashboard


---

## Final Recommendations

### Inventory Strategy

Focus on high-performing categories such as Kitchen and Garden.

### Geographic Targeting

Invest more in Australia and European markets.

### Premium Market Strategy

Develop premium offerings for Hong Kong customers due to high AOV.

### Demand Forecasting

Use historical revenue trends to improve inventory planning and demand forecasting.

### Customer Retention

Focus on high-value customers through loyalty programs and targeted marketing campaigns.

These strategies can significantly improve revenue growth and operational efficiency.

---

## Author & Contact

**Aditya Raj**

B.Tech Computer Science Engineering (3rd Year)  
Aspiring Data Analyst  

📊 Skills: SQL | Python | Tableau | Data Analytics
