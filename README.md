# E-Commerce Sales & Customer Analytics Dashboard

## Project Overview

This project focuses on analyzing e-commerce sales data to understand customer behavior, sales performance, product trends, and business insights.

The goal of this project is to build an end-to-end analytics solution using Python, SQL, and Power BI to transform raw transactional data into meaningful insights through data cleaning, exploratory data analysis, and interactive dashboards.

---

## Business Objectives

- Analyze overall sales performance
- Identify top-performing product categories
- Understand customer purchasing behavior
- Analyze repeat and one-time customers
- Evaluate delivery performance
- Find revenue contribution by states and cities
- Build interactive dashboards for business decision-making

---

## Dataset

Dataset used:
**Brazilian E-Commerce Public Dataset by Olist**

The dataset contains information about:

- Customers
- Orders
- Order Items
- Products
- Sellers
- Payments
- Reviews

---

## Tools & Technologies Used

### Programming & Analysis
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn

### Database
- Microsoft SQL Server
- SQL Queries

### Visualization
- Microsoft Power BI

### Development Tools
- VS Code
- Git & GitHub
- Jupyter Notebook

---

# Project Workflow

## 1. Data Collection

Imported raw Olist datasets containing customer, order, product, seller, and payment information.

---

## 2. Data Cleaning & Preparation

Performed:

- Data type conversion
- Missing value analysis
- Duplicate checking
- Feature engineering
- Dataset merging

Created analytical features:

- Total Sales
- Customer Order Count
- Customer Total Spending
- Delivery Delay Days
- Order Month
- Order Year

---

# Exploratory Data Analysis (EDA)

Performed analysis on:

### Customer Analysis

- Customer distribution by state and city
- Customer purchasing behavior
- Repeat vs one-time customers


### Sales Analysis

- Monthly revenue trends
- State-wise sales performance
- Product category revenue analysis


### Product Analysis

- Product category performance
- Product price distribution
- Best-selling products


### Delivery Analysis

- Delivery delays
- Average delivery time
- Order status analysis

---

# Power BI Dashboards

## Executive Dashboard

Contains:

- Total Revenue KPI
- Total Orders KPI
- Average Order Value
- Sales Trend Analysis
- Order Status Distribution


## Customer Analytics Dashboard

Contains:

- Repeat vs One-Time Customers
- Customer Order Frequency
- Top Customers
- Customer Distribution by State
- Top Cities Analysis


## Product Insights Dashboard

Contains:

- Top Product Categories
- Best Selling Products
- Product Performance Analysis
- Revenue Contribution

---

# SQL Analysis

SQL analysis was performed using Microsoft SQL Server.

Created queries for:

- Revenue calculation
- Monthly sales trends
- Customer analysis
- Product category analysis
- State-wise revenue
- Order status analysis
- Delivery performance

SQL files:

sql/
│
├── 01_database_setup.sql
├── 02_data_validation.sql
└── 03_analysis_queries.sql


---

# Key Insights

Some important findings:

- São Paulo generated the highest revenue contribution.
- Beauty & Health category was among the top revenue-generating categories.
- Most orders were successfully delivered.
- Customer purchasing patterns helped identify repeat customers.
- Delivery performance analysis highlighted delays and improvements.

---

# Project Structure

E-Commerce Sales & Customer Analytics Dashboard
│
├── data
├── notebooks
├── powerbi
├── reports
├── screenshots
├── sql
├── README.md
└── requirements.txt


---

# Future Improvements

- Build predictive sales forecasting model
- Customer segmentation using Machine Learning
- Deploy dashboard online
- Automate data pipeline

---

## Author

**Dhairyashil Shinde**

AI & Data Science Graduate  
Skills: Python | SQL | Excel | Power BI | Data Analytics