# Uber Trip Data Analysis | End-to-End Data Analytics Project

This project presents a complete **end-to-end data analytics pipeline** built on an Uber trip dataset. The goal of the project is to transform raw trip data into meaningful insights using **Python for data cleaning, SQL for data analysis, and Power BI for interactive visualization**.

The workflow begins with **data preprocessing using Python (Pandas)** where the raw dataset is cleaned, missing values are handled, duplicates are removed, and new analytical features are created. The cleaned dataset is then loaded into **MySQL**, where SQL queries are used to perform exploratory data analysis and extract business insights related to trip demand, revenue patterns, passenger behavior, and payment trends.

Finally, the processed data is visualized using **Power BI**, where an interactive dashboard is created to analyze key metrics such as total trips, total revenue, average fare, trip distance distribution, passenger count patterns, and payment method preferences.

This project demonstrates the **complete data analytics workflow**, including data preparation, database querying, and business intelligence reporting.

## Tools & Technologies Used

* **Python** – Data cleaning and preprocessing (Pandas, NumPy)
* **MySQL** – Data storage and analytical querying
* **Power BI** – Interactive dashboard and data visualization
* **GitHub** – Project documentation and version control

## Key Objectives

* Clean and preprocess raw trip data
* Perform SQL-based analytical queries
* Identify patterns in trip distance, revenue, and passenger usage
* Build an interactive dashboard for business insights

## Outcome

The final Power BI dashboard provides clear insights into **Uber trip patterns, revenue generation, passenger distribution, and payment preferences**, enabling better understanding of ride demand and operational trends.



uber-trip-data-analysis
│
├── dataset
│   └── uber_trips_cleaned.csv
│
├── python
│   └── data_cleaning.ipynb
│
├── sql
│   └── analysis_queries.sql
│
├── powerbi
│   └── uber_dashboard.pbix
│
├── images
│   └── dashboard.png
│
└── README.md
