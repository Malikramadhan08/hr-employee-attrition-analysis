-- HR Employee Attrition Analysis
-- SQL Portfolio Project

CREATE DATABASE IF NOT EXISTS hr_employee_analysis;

USE hr_employee_analysis;

CREATE TABLE employees (
    EmployeeID VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    JobLevel INT,
    YearsAtCompany INT,
    MonthlyIncome DECIMAL(12,2),
    JobSatisfaction INT,
    WorkLifeBalance INT,
    OverTime VARCHAR(10),
    DistanceFromHome INT,
    PromotionLast5Years VARCHAR(10),
    PerformanceRating INT,
    TrainingHoursLastYear INT,
    Attrition VARCHAR(10)
);

-- =========================================
-- BASIC KPI
-- =========================================

-- 1. Total Employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- 2. Employees Left
SELECT COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes';

-- 3. Overall Attrition Rate
SELECT
    ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM employees;

-- =========================================
-- DEPARTMENT ANALYSIS
-- =========================================

-- 4. Employees Left by Department
SELECT
    Department,
    COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY employees_left DESC;

-- 5. Attrition Rate by Department
SELECT
    Department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM employees
GROUP BY Department
ORDER BY attrition_rate DESC;

-- =========================================
-- JOB LEVEL ANALYSIS
-- =========================================

-- 6. Employees Left by Job Level
SELECT
    JobLevel,
    COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY JobLevel
ORDER BY JobLevel;

-- =========================================
-- OVERTIME ANALYSIS
-- =========================================

-- 7. Employees Left by OverTime
SELECT
    OverTime,
    COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY OverTime;


-- =========================================
-- JOB SATISFACTION ANALYSIS
-- =========================================

-- 8. Employees Left by Job Satisfaction
SELECT
    JobSatisfaction,
    COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;


-- =========================================
-- WORK-LIFE BALANCE ANALYSIS
-- =========================================

-- 9. Employees Left by Work-Life Balance
SELECT
    WorkLifeBalance,
    COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;


-- =========================================
-- PERFORMANCE ANALYSIS
-- =========================================

-- 10. Employees Left by Performance Rating
SELECT
    PerformanceRating,
    COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY PerformanceRating
ORDER BY PerformanceRating;


-- =========================================
-- PROMOTION ANALYSIS
-- =========================================

-- 11. Employees Left by Promotion
SELECT
    PromotionLast5Years,
    COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY PromotionLast5Years;

-- =========================================
-- AGE ANALYSIS
-- =========================================

-- 12. Employees Left by Age
SELECT
    Age,
    COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Age
ORDER BY Age;


-- 13. Employees Left by Age Group
SELECT
    CASE
        WHEN Age BETWEEN 22 AND 25 THEN '22-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '46+'
    END AS age_group,
    COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY age_group
ORDER BY employees_left DESC;


-- =========================================
-- TENURE ANALYSIS
-- =========================================

-- 14. Employees Left by Years at Company
SELECT
    YearsAtCompany,
    COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;


-- 15. Employees Left by Tenure Group
SELECT
    CASE
        WHEN YearsAtCompany BETWEEN 0 AND 2 THEN '0-2 years'
        WHEN YearsAtCompany BETWEEN 3 AND 5 THEN '3-5 years'
        WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 years'
        ELSE '10+ years'
    END AS tenure_group,
    COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY tenure_group
ORDER BY employees_left DESC;


-- =========================================
-- INCOME ANALYSIS
-- =========================================

-- 16. Monthly Income Statistics
SELECT
    MIN(MonthlyIncome) AS min_income,
    MAX(MonthlyIncome) AS max_income,
    ROUND(AVG(MonthlyIncome), 2) AS avg_income
FROM employees;

-- 17. Employees by Income Group
SELECT
    CASE
        WHEN MonthlyIncome < 5000 THEN '< 5K'
        WHEN MonthlyIncome < 7500 THEN '5K-7.5K'
        WHEN MonthlyIncome < 10000 THEN '7.5K-10K'
        WHEN MonthlyIncome < 15000 THEN '10K-15K'
        ELSE '15K+'
    END AS income_group,
    COUNT(*) AS employees
FROM employees
GROUP BY income_group
ORDER BY MIN(MonthlyIncome);



-- =========================================
-- TRAINING ANALYSIS
-- =========================================

-- 18. Training Hours Statistics
SELECT
    MIN(TrainingHoursLastYear) AS min_training,
    MAX(TrainingHoursLastYear) AS max_training,
    ROUND(AVG(TrainingHoursLastYear), 2) AS avg_training
FROM employees;

-- 19. Employees by Training Group
SELECT
    CASE
        WHEN TrainingHoursLastYear <= 10 THEN '0-10 hours'
        WHEN TrainingHoursLastYear <= 20 THEN '11-20 hours'
        ELSE '21+ hours'
    END AS training_group,
    COUNT(*) AS employees
FROM employees
GROUP BY training_group
ORDER BY MIN(TrainingHoursLastYear);


-- =========================================
-- COMBINED ANALYSIS
-- =========================================

-- 20. Employees Left by Department and OverTime
SELECT
    Department,
    OverTime,
    COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Department, OverTime
ORDER BY employees_left DESC;

-- 21. Employees Left by Job Level and OverTime
SELECT 
    JobLevel, OverTime, COUNT(*) AS employees_left
FROM
    employees
WHERE
    Attrition = 'Yes'
GROUP BY JobLevel , OverTime
ORDER BY employees_left DESC;

-- 22. Employees Left by Department and Job Level
SELECT
    Department,
    JobLevel,
    COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Department, JobLevel
ORDER BY employees_left DESC;


-- =========================================
-- ATTRITION RATE ANALYSIS
-- =========================================

-- 23. Attrition Rate by OverTime
SELECT
    OverTime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM employees
GROUP BY OverTime
ORDER BY attrition_rate DESC;


-- 24. Attrition Rate by Job Level
SELECT
    JobLevel,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM employees
GROUP BY JobLevel
ORDER BY attrition_rate DESC;


-- 25. Attrition Rate by Job Satisfaction
SELECT
    JobSatisfaction,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM employees
GROUP BY JobSatisfaction
ORDER BY attrition_rate DESC;


-- 26. Attrition Rate by Work-Life Balance
SELECT
    WorkLifeBalance,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM employees
GROUP BY WorkLifeBalance
ORDER BY attrition_rate DESC;


-- =========================================
-- ADVANCED SQL
-- =========================================

-- 27. Employees with Above-Average Monthly Income
SELECT
    EmployeeID,
    Department,
    MonthlyIncome
FROM employees
WHERE MonthlyIncome > (
    SELECT AVG(MonthlyIncome)
    FROM employees
)
ORDER BY MonthlyIncome DESC;


-- 28. Department Analysis using CTE
WITH department_analysis AS (
    SELECT
        Department,
        COUNT(*) AS total_employees,
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left
    FROM employees
    GROUP BY Department
)
SELECT *
FROM department_analysis
ORDER BY employees_left DESC;


-- 29. Job Level Ranking within Each Department
SELECT
    Department,
    JobLevel,
    COUNT(*) AS employees_left,
    RANK() OVER (
        PARTITION BY Department
        ORDER BY COUNT(*) DESC
    ) AS rank_level
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Department, JobLevel;







