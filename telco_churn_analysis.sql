CREATE DATABASE Telco_Customer_Churn;
USE Telco_Customer_Churn;

SELECT * FROM telco LIMIT 5;
SELECT COUNT(*) FROM telco ;

SELECT COUNT(*) AS total_columns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'telco';

SELECT COUNT(DISTINCT CustomerID) FROM telco ;

SELECT COUNT(*) FROM telco WHERE Churn = 'YES';
SELECT COUNT(*) FROM telco WHERE Churn = 'NO';

SELECT
    COUNT(CASE WHEN Churn = 'Yes' THEN 1 END) AS churned_customers,
    COUNT(*) AS total_customers,
    ROUND(COUNT(CASE WHEN Churn = 'Yes' THEN 1 END) * 100.0/ COUNT(*),2) AS churn_rate_percentage
FROM telco;


SELECT Contract , COUNT(*)AS total_customer,
SUM(CASE WHEN Churn='YES' THEN 1 ELSE 0 END)AS chruned_customer,
ROUND(SUM(CASE WHEN Churn='YES' THEN 1 ELSE 0 END)*100/COUNT(*),2)AS churn_rate_percentage
FROM telco
GROUP BY Contract
ORDER BY churn_rate_percentage DESC;




SELECT
    Churn,
    COUNT(*) AS total_customers,
    ROUND(AVG(tenure), 2) AS average_tenure_months
FROM telco
GROUP BY Churn;



SELECT
    CASE
        WHEN tenure <= 12 THEN '0-12 months'
        WHEN tenure <= 24 THEN '13-24 months'
        WHEN tenure <= 48 THEN '25-48 months'
        ELSE '49-72 months'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM telco
GROUP BY tenure_group
ORDER BY MIN(tenure);



SELECT InternetService , COUNT(*)AS total_customer ,COUNT(CASE WHEN Churn = 'Yes' THEN 1  END)churned_customers,
ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0/ COUNT(*), 2) AS churn_rate_percentage
FROM telco
GROUP BY InternetService;



SELECT Churn,COUNT(*)AS total_customers,ROUND(AVG(MonthlyCharges),2)AS avg_MonthlyCharges,ROUND(AVG(TotalCharges),2)AS Avg_TotalCharges
FROM telco
GROUP BY Churn;


SELECT PaymentMethod , COUNT(*)AS total_customer ,COUNT(CASE WHEN Churn = 'Yes' THEN 1  END)churned_customers,
ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0/ COUNT(*), 2) AS churn_rate_percentage
FROM telco
GROUP BY PaymentMethod;




SELECT SeniorCitizen , COUNT(*)AS total_customer ,COUNT(CASE WHEN Churn = 'Yes' THEN 1  END)churned_customers,
ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0/ COUNT(*), 2) AS churn_rate_percentage
FROM telco
GROUP BY SeniorCitizen;



SELECT COUNT(*)AS missing_value_count FROM telco WHERE TotalCHarges IS NULL;
SELECT COUNT(DISTINCT CustomerID) FROM telco;