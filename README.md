# Telco Customer Churn Analysis

An end-to-end data analytics project exploring customer churn in the telecommunications industry using SQL, Python, Google Sheets, and Looker Studio.

## 📌 Project Overview

Customer churn occurs when customers discontinue a service. The objective of this project is to analyze customer data, identify segments with high churn rates, and provide actionable recommendations to improve customer retention.

## 🎯 Business Objectives

- Calculate the overall customer churn rate.
- Analyze churn across contract types, internet services, payment methods, and customer tenure.
- Validate and analyze customer data using SQL and Python.
- Build an interactive dashboard to communicate key findings.
- Recommend data-driven customer retention strategies.

## 🛠️ Tools & Technologies

- **Google Sheets:** Dataset handling and spreadsheet exploration
- **Python:** Data cleaning and exploratory data analysis
- **Pandas & NumPy:** Data manipulation and analysis
- **Matplotlib & Seaborn:** Data visualization
- **MySQL Workbench:** SQL queries and data validation
- **Looker Studio:** Interactive dashboard and KPI reporting

## 📂 Project Files

| File | Description |
|---|---|
| `telco_churn_analysis.sql` | SQL queries for customer churn analysis |
| `Telco_Customer_Churn_Analysis.ipynb` | Python analysis notebook |
| `Telco_Customer_Churn_Cleaned.csv` | Cleaned dataset |
| `WA_Fn-UseC_-Telco-Customer-Churn (1).csv` | Original dataset, if verified |

## 📊 Dataset Summary

- **Total customers:** 7,043
- **Features after cleaning:** 22
- **Churned customers:** 1,869
- **Retained customers:** 5,174
- **Overall churn rate:** 26.54%

The cleaned dataset contains no missing values or duplicate records after preprocessing. Blank `TotalCharges` values were handled during cleaning.

## 🔍 Key Findings

1. **Overall churn:** 26.54% of customers had churned.
2. **Contract type:** Month-to-month customers had a churn rate of 42.71%, compared with 11.27% for one-year contracts and 2.83% for two-year contracts.
3. **Internet service:** Fiber optic customers had the highest churn rate at 41.89%.
4. **Payment method:** Electronic check users had the highest churn rate at 45.29%.
5. **Customer tenure:** Customers with 0–12 months of tenure had the highest churn rate at 47.44%.

## 💡 Business Recommendations

- Test targeted retention offers for month-to-month customers.
- Investigate fiber optic pricing, service quality, and support complaints.
- Review the electronic check billing and payment experience.
- Improve onboarding and customer engagement during the first year.
- Track churn rates by customer segment to evaluate retention initiatives.

These recommendations are based on observed patterns. Further investigation and experiments are needed to establish causes and measure business impact.

## 📈 Interactive Dashboard

[**View the Telco Customer Churn Dashboard**](https://datastudio.google.com/reporting/1fe41bbf-3034-40f8-b557-41127b49875d)

The dashboard includes:
- Total Customers, Churned Customers, Churn Rate, and Retained Customers KPIs
- Customer churn distribution
- Contract-wise churn rate
- Internet service churn rate
- Payment method-wise churn rate
- Tenure group-wise churn rate
- Filters for contract, internet service, payment method, and senior citizen status

## 📑 Google Sheets

[**Open the project spreadsheet**](https://docs.google.com/spreadsheets/d/169gFKOna6TNe5OTZroysdAW-zJ7noB_mNs9ga7ME2cA/edit?usp=sharing)

## 💻 Google Colab Notebook

The notebook link will be added after the notebook is published and its sharing access is verified.

## 🚀 Project Outcome

This project demonstrates an end-to-end analytics workflow, from dataset preparation and SQL-based analysis to Python exploration and interactive dashboard reporting. It highlights customer segments that may benefit from focused retention strategies.

## ⚠️ Notes

- Verify that the original CSV is the correct source dataset before uploading it.
- Share the notebook and dashboard with appropriate viewing permissions.
- Do not upload credentials, passwords, or private customer information.
