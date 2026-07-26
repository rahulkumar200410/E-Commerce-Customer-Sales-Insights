# 🛒 E-Commerce Customer & Sales Insights

<p align="center">

### End-to-End Data Analytics Project using Python, MySQL, SQL & Power BI

Transforming raw retail transaction data into actionable business insights through data cleaning, customer segmentation, SQL analytics, and interactive dashboards.

</p>

---

## ⭐ Highlights

- 📊 End-to-End Data Analytics Project
- 🐍 Data Cleaning & Feature Engineering using Python
- 🗄️ MySQL Database Integration
- 📑 SQL-Based Business Analysis
- 📈 Interactive Power BI Dashboard
- 👥 RFM Customer Segmentation
- 💡 Business Insights & Recommendations

---

## 📑 Table of Contents

- [Project Overview](#-project-overview)
- [Objectives](#-objectives)
- [Tech Stack](#️-tech-stack)
- [Project Workflow](#-project-workflow)
- [Project Structure](#-project-structure)
- [Dataset](#-dataset)
- [Python Analysis](#-python-analysis)
- [MySQL Database](#️-mysql-database)
- [SQL Business Analysis](#-sql-business-analysis)
- [Power BI Dashboard](#-power-bi-dashboard)
- [Dashboard Preview](#-dashboard-preview)
- [Key Business Insights](#-key-business-insights)
- [Business Recommendations](#-business-recommendations)
- [How to Run](#-how-to-run-the-project)
- [Future Improvements](#-future-improvements)
- [Author](#-author)

---

# 📖 Project Overview

This project demonstrates a complete end-to-end Data Analytics workflow using an E-Commerce retail dataset.

The objective of this project is to transform raw transactional data into meaningful business insights by performing data cleaning, exploratory data analysis (EDA), customer segmentation, SQL-based business analysis, and interactive dashboard development.

Unlike a traditional CSV-based dashboard, the cleaned data is stored in a **MySQL database**, and **Power BI is connected directly to MySQL**, reflecting a workflow commonly used in real-world business intelligence projects.

This project showcases practical skills in:

- Data Cleaning
- Feature Engineering
- Exploratory Data Analysis
- RFM Customer Segmentation
- SQL Business Analysis
- Power BI Dashboard Development
- Business Insight Generation

---

# 🎯 Objectives

- Clean and preprocess raw retail transaction data.
- Explore sales and customer purchasing behaviour.
- Build meaningful business features.
- Segment customers using the RFM model.
- Store processed datasets in MySQL.
- Analyze business performance using SQL.
- Design an interactive Power BI dashboard.
- Provide actionable business recommendations.

---

# 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| Python | Data Cleaning & Analysis |
| Pandas | Data Manipulation |
| NumPy | Numerical Computing |
| Matplotlib | Data Visualization |
| Seaborn | Statistical Visualization |
| MySQL | Database Management |
| SQL | Business Analysis |
| Power BI | Interactive Dashboard |

---

# 🔄 Project Workflow

```text
                 Raw Dataset (CSV)
                        │
                        ▼
     Python (Cleaning + EDA + Feature Engineering)
                        │
                        ▼
         RFM Customer Segmentation Analysis
                        │
                        ▼
      Processed Data Stored in MySQL Database
                        │
                        ▼
             SQL Business Analysis
                        │
                        ▼
        Interactive Power BI Dashboard
                        │
                        ▼
     Business Insights & Recommendations
```

---

# 📂 Project Structure

```text
E-Commerce-Customer-Sales-Insights/
│
├── Datasets/
│   ├── sales_analysis_dataset.csv
│   └── rfm_analysis_results.csv
│
├── Images/
│
├── Notebooks/
│   └── ecommerce_customer_sales_analysis.ipynb
│
├── SQL/
│   └── Customer_Sales_Insights_SQL_Analysis.sql
│
├── PowerBI/
│   └── Ecommerce Sales Dashboard.pbix
│
├── README.md
└── requirements.txt
```
# 📊 Dataset

This project uses an **Online Retail E-Commerce dataset** containing transactional sales records from an online retail store.

The dataset includes information about:

- Invoice Number
- Product Code
- Product Description
- Quantity Purchased
- Invoice Date
- Unit Price
- Customer ID
- Country

After preprocessing, additional business features such as **Total Price**, **Invoice Month**, **Invoice Year**, and **Invoice Day** were created to support deeper business analysis.

---

# 🐍 Python Analysis

Python was used to clean, transform, and analyze the raw transactional data before storing it in MySQL.

### Data Cleaning

- Removed missing values
- Removed duplicate records
- Removed cancelled transactions
- Fixed incorrect data types
- Handled invalid Customer IDs

### Feature Engineering

New business features were created including:

- Total Price
- Invoice Month
- Invoice Year
- Invoice Day

These features improve time-series analysis and reporting.

---

### Exploratory Data Analysis (EDA)

The notebook performs multiple analyses including:

- Revenue Trend Analysis
- Monthly Sales Analysis
- Top Products by Revenue
- Top Customers
- Country-wise Revenue
- Sales Distribution
- Customer Purchasing Behaviour

---

### RFM Customer Segmentation

Customers were segmented using the **Recency-Frequency-Monetary (RFM)** model.

The resulting customer groups help identify:

- VIP Customers
- Loyal Customers
- Regular Customers
- Inactive Customers

This segmentation can support marketing campaigns and customer retention strategies.

---

# 🗄️ MySQL Database

Instead of connecting Power BI directly to CSV files, the processed datasets are stored in **MySQL**, creating a more realistic business intelligence workflow.

### Database

```sql
customer_sales_insights
```

### Tables

```sql
sales_analysis_dataset

rfm_analysis_results
```

The cleaned datasets are imported into MySQL and used for SQL analysis as well as Power BI reporting.

---

# 📝 SQL Business Analysis

SQL queries were written to answer common business questions and extract valuable insights from the cleaned data.

### SQL Analysis Includes

- Total Revenue
- Total Orders
- Total Customers
- Revenue by Country
- Monthly Revenue Trend
- Top Products by Revenue
- Most Sold Products
- Top Customers
- Average Order Value
- Product Revenue Ranking
- Customer Segmentation

The SQL analysis demonstrates the use of:

- Aggregate Functions
- GROUP BY
- ORDER BY
- CASE Statements
- Window Functions
- Ranking Functions
- Business KPI Queries

---

# 📈 Power BI Dashboard

The Power BI dashboard is connected directly to the **MySQL database** and provides interactive business insights through four report pages.

The dashboard enables users to explore sales performance, customer behaviour, and market trends using filters and interactive visuals.

---

# 📊 Dashboard Preview

## 📌 Executive Overview

**Highlights**

- Revenue KPI
- Orders KPI
- Customers KPI
- Monthly Revenue Trend
- Top Products
- Revenue by Country

> Replace with your screenshot

```markdown
![Executive Overview](Images/executive_overview.png)
```

---

## 👥 Customer Segmentation Analysis

**Highlights**

- RFM Segments
- Revenue by Segment
- Customer Distribution
- Segment Performance

> Replace with your screenshot

```markdown
![Customer Segmentation](Images/customer_segmentation.png)
```

---

## 🌍 Product & Market Insights

**Highlights**

- Product Revenue
- Best Selling Products
- Country Performance
- Market Analysis

> Replace with your screenshot

```markdown
![Product & Market Insights](Images/product_market_insights.png)
```

---

## 📋 Executive Insights

**Highlights**

- Business KPIs
- Revenue Insights
- Customer Insights
- Business Recommendations

> Replace with your screenshot

```markdown
![Executive Insights](Images/executive_insights.png)
```
# 📌 Key Business Insights

Based on the analysis, the following business insights were identified:

### 🌍 Geographic Performance
- The **United Kingdom** generates the highest revenue among all countries.
- A few countries contribute the majority of total sales, indicating opportunities for market expansion.

### 📈 Sales Trends
- Sales increase significantly during **November and December**, reflecting strong seasonal demand.
- Monthly revenue analysis helps identify peak and low-performing periods for inventory planning.

### 🛍 Product Performance
- A small number of products contribute a large share of total revenue.
- Identifying top-selling products helps optimize inventory management and promotional strategies.

### 👥 Customer Behaviour
- VIP and Loyal customers generate a significant portion of total revenue.
- Customer segmentation enables personalized marketing campaigns and improved customer retention.

---

# 💡 Business Recommendations

Based on the analysis, the following recommendations can help improve business performance:

- 🎯 Strengthen loyalty programs for VIP and Loyal customers.
- 📢 Increase promotional campaigns during peak sales seasons.
- 📦 Maintain sufficient inventory for high-performing products.
- 🌍 Expand marketing efforts in high-revenue countries.
- 🔄 Re-engage inactive customers through personalized offers and discounts.

---

# 🚀 How to Run the Project

## 1️⃣ Clone the Repository

```bash
git clone https://github.com/rahulkumar200410/E-Commerce-Customer-Sales-Insights.git
```

---

## 2️⃣ Install Required Libraries

```bash
pip install -r requirements.txt
```

---

## 3️⃣ Run the Python Notebook

Open the notebook:

```text
Notebooks/ecommerce_customer_sales_analysis.ipynb
```

Run all cells to:

- Clean the raw dataset
- Perform EDA
- Generate RFM customer segments
- Export processed datasets

---

## 4️⃣ Import Data into MySQL

Create the database:

```sql
CREATE DATABASE customer_sales_insights;
```

Import:

- sales_analysis_dataset.csv
- rfm_analysis_results.csv

---

## 5️⃣ Execute SQL Analysis

Open:

```text
SQL/Customer_Sales_Insights_SQL_Analysis.sql
```

Run all queries using MySQL Workbench.

---

## 6️⃣ Open Power BI Dashboard

Open:

```text
PowerBI/Ecommerce Sales Dashboard.pbix
```

If prompted, update the MySQL connection and click **Refresh** to load the latest data.

---

# 📁 Repository Structure

```text
E-Commerce-Customer-Sales-Insights/
│
├── Datasets/
│   ├── sales_analysis_dataset.csv
│   ├── rfm_analysis_results.csv
│   └── Raw Dataset
│
├── Images/
│   ├── executive_overview.png
│   ├── customer_segmentation.png
│   ├── product_market_insights.png
│   ├── executive_insights.png
│   ├── python_visualizations...
│
├── Notebooks/
│   └── ecommerce_customer_sales_analysis.ipynb
│
├── SQL/
│   └── Customer_Sales_Insights_SQL_Analysis.sql
│
├── PowerBI/
│   └── Ecommerce Sales Dashboard.pbix
│
├── requirements.txt
└── README.md
```

---

# 🔮 Future Improvements

Possible enhancements for this project include:

- 📈 Sales Forecasting using Time Series Analysis
- 🤖 Customer Churn Prediction using Machine Learning
- ⚡ Automated ETL Pipeline
- ☁️ Power BI Service Deployment
- 📊 Interactive Executive KPI Dashboard
- 🔄 Scheduled Database Refresh

---

# 🙋‍♂️ About Me

Hi, I'm **Rahul Kumar Sao**, an Electrical Engineering undergraduate with a strong interest in **Data Analytics, Business Intelligence, SQL, Python, and Power BI**.

I enjoy transforming raw data into meaningful insights and building dashboards that support data-driven decision-making.

---

# 📬 Connect with Me

**GitHub**

https://github.com/rahulkumar200410

**LinkedIn**

https://www.linkedin.com/in/rahul-kumar-sao-8a5175322

---

## ⭐ If you found this project helpful, consider giving it a star!

Thank you for visiting this repository!
