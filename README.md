# HR Employee Attrition Analysis

## 📌 Project Overview

This project analyzes employee attrition data to identify patterns in employee turnover.

The analysis was conducted using **MySQL** for data validation and analysis, and **Microsoft Excel** for data visualization and dashboard development.

The purpose of this project is to understand employee attrition patterns and identify potential areas for further HR investigation and improvement.

> **Note:** This project identifies patterns and relationships observed in the dataset. It does not establish causal relationships between the analyzed factors and employee attrition.

---

## 🎯 Objectives

The objectives of this project are to:

- Understand the overall employee attrition rate
- Analyze employee attrition across different departments
- Analyze attrition rates based on overtime, job level, job satisfaction, and work-life balance
- Explore employee attrition by age and tenure groups
- Examine patterns related to promotion and performance
- Review monthly income and training-hour distributions
- Generate business insights based on the analysis
- Provide recommendations for further HR investigation

---

## 🛠️ Tools Used

- **MySQL** — Data validation, SQL analysis, and advanced SQL
- **Microsoft Excel** — Data cleaning and dashboard visualization
- **GitHub** — Project documentation and version control

---

## 📊 Dataset

The dataset contains **10,000 employees** and **14 variables**.

### Variables

- EmployeeID
- Age
- Department
- JobLevel
- YearsAtCompany
- MonthlyIncome
- JobSatisfaction
- WorkLifeBalance
- OverTime
- DistanceFromHome
- PromotionLast5Years
- PerformanceRating
- TrainingHoursLastYear
- Attrition

### Dataset Source

**Employee Attrition Dataset** by personacarved on Kaggle.

---

## 🔄 Project Workflow

### 1. Data Validation

The dataset was validated before analysis.

Checks included:

- Total number of employees
- Duplicate Employee IDs
- Missing values
- Data ranges
- Categorical values
- Attrition values
- Overtime values
- Promotion values

### Validation Results

- **10,000 employees**
- **0 duplicate Employee IDs**
- **0 missing values**

---

## 2. Basic Attrition Analysis

The analysis calculated:

- Total employees
- Employees who left
- Overall attrition rate

### Overall Results

- **Total Employees:** 10,000
- **Employees Left:** 903
- **Overall Attrition Rate:** 9.03%

---

## 3. Department Analysis

The project analyzed:

- Number of employees who left by department
- Attrition rate by department

### Findings

- **Engineering** had the highest attrition rate at **9.58%**.
- **Sales** had the highest number of employees who left, with **233 employees**.

> The department with the highest number of employees who left is not necessarily the department with the highest attrition rate.

---

## 4. Overtime Analysis

The project calculated attrition rates based on overtime status.

### Findings

- **Overtime: Yes** — 12.18% attrition rate
- **Overtime: No** — 7.78% attrition rate

Employees working overtime had a higher observed attrition rate in this dataset.

---

## 5. Job Level Analysis

Attrition rates were analyzed across Job Levels 1–5.

### Findings

- **Job Level 1** had the highest attrition rate at **11.22%**.
- **Job Level 4** had the lowest attrition rate at **5.04%**.

---

## 6. Job Satisfaction Analysis

Attrition rates were analyzed across Job Satisfaction levels 1–5.

### Findings

- **Job Satisfaction Level 2** had the highest attrition rate at **16.63%**.
- **Job Satisfaction Level 5** had the lowest attrition rate at **7.17%**.

---

## 7. Work-Life Balance Analysis

Attrition rates were analyzed across Work-Life Balance levels 1–4.

### Findings

- **Work-Life Balance Level 2** had the highest attrition rate at **12.13%**.
- **Level 4** had the lowest attrition rate at **6.87%**.

---

## 8. Age Analysis

Employee attrition was analyzed by age and age groups.

The analysis focused on the **number of employees who left** in each age group.

### Finding

- The **36–45 age group** had the highest number of employees who left, with **332 employees**.

> This result represents the number of employees who left, not the highest attrition rate.

---

## 9. Tenure Analysis

Employee attrition was analyzed based on YearsAtCompany and tenure groups.

### Finding

- Employees with **0–2 years at the company** had the highest number of employees who left, with **313 employees**.

> This result represents the number of employees who left, not the highest attrition rate.

---

## 10. Promotion Analysis

The project compared the number of employees who left based on whether they had received a promotion within the last five years.

### Findings

Among employees who left:

- **No promotion in the last 5 years:** 842 employees
- **Promotion in the last 5 years:** 61 employees

> This analysis is based on employee counts. An attrition rate comparison between promotion groups was not calculated in this project.

---

## 11. Performance Analysis

The project examined the distribution of employees who left across different performance ratings.

Employees who left were distributed across Performance Ratings 1–4.

The analysis was used to observe the distribution of attrition counts by performance rating.

> No conclusion was made that a specific performance rating causes higher attrition.

---

## 12. Monthly Income Analysis

The project examined the distribution of monthly income across employees.

### Income Statistics

- **Minimum Monthly Income:** 3,000
- **Maximum Monthly Income:** 21,410
- **Average Monthly Income:** 8,967.73

Income groups were also created to understand the distribution of employees across different income ranges.

> Monthly income was analyzed as a distribution in this project. Attrition rates by income group were not calculated.

---

## 13. Training Hours Analysis

The project examined the distribution of TrainingHoursLastYear.

### Training Statistics

- **Minimum Training Hours:** 2
- **Maximum Training Hours:** 31
- **Average Training Hours:** 14.99

Training-hour groups were also created to understand the distribution of employees.

> Training hours were analyzed as a distribution in this project. Attrition rates by training group were not calculated.

---

## 🧮 Advanced SQL

The project also applied several advanced SQL techniques.

### Subquery

Used to identify employees whose monthly income was above the overall average.

### Common Table Expression (CTE)

Used to structure department-level employee and attrition analysis.

### Window Function

Used to rank Job Levels within each department based on the number of employees who left.

---

## 💡 Business Insights

Based on the analyses performed, several areas were identified for further investigation:

1. **Overtime**
   - Employees working overtime showed a higher observed attrition rate than employees who did not work overtime.

2. **Job Satisfaction**
   - Job Satisfaction Level 2 showed the highest observed attrition rate among the satisfaction levels analyzed.

3. **Work-Life Balance**
   - Work-Life Balance Level 2 showed the highest observed attrition rate among the analyzed levels.

4. **Job Level**
   - Job Level 1 showed the highest observed attrition rate.

5. **Early Tenure**
   - Employees with 0–2 years at the company represented the largest number of employees who left among the analyzed tenure groups.

6. **Department**
   - Engineering had the highest observed department-level attrition rate, while Sales had the highest number of employees who left.

> These findings describe patterns observed in the dataset and should not be interpreted as proof of causation.

---

## 💼 Recommendations

Based on the observed patterns, the following areas could be considered for further HR investigation:

### 1. Monitor Overtime and Workload

Review workload distribution and overtime patterns to identify whether excessive working hours may be associated with employee turnover.

### 2. Improve Employee Satisfaction

Conduct employee satisfaction surveys to better understand the factors associated with lower satisfaction levels.

### 3. Improve Work-Life Balance

Evaluate workload and working practices to identify potential areas for improving work-life balance.

### 4. Support Lower-Level Employees

Provide mentoring, career development, and support programs for employees at lower job levels.

### 5. Improve Career Development Opportunities

Consider providing clearer career paths and promotion opportunities for employees.

### 6. Strengthen Early-Tenure Support

Improve onboarding and mentoring programs, particularly during the first two years of employment.

### 7. Further Investigate Engineering

Conduct deeper analysis of workload, overtime, satisfaction, job level, and career development within the Engineering department.

---

## 📊 Excel Dashboard

An Excel dashboard was created to summarize the main findings from the analysis.

The dashboard includes:

- Total Employees
- Employees Left
- Overall Attrition Rate
- Employees Left by Department
- Attrition Rate by Overtime
- Attrition Rate by Job Level
- Attrition Rate by Job Satisfaction
- Attrition Rate by Work-Life Balance
- Key Insights

---

## 📁 Project Files

- `hr_employee_analysis.sql` — SQL queries used for the analysis
- `Employee_Attrition_DataSet_cleaned.xlsx` — Cleaned dataset and Excel dashboard

---

## 📚 Learning Outcomes

Through this project, I practiced:

- Data validation
- Data cleaning
- SQL data analysis
- Aggregation and filtering
- CASE statements
- GROUP BY
- Subqueries
- Common Table Expressions (CTE)
- Window Functions
- Business insight generation
- Excel dashboard development
- Data visualization
- Translating analytical findings into business recommendations

---

## ⚠️ Project Limitations

This project has several limitations:

- The analysis identifies patterns and relationships but does not establish causation.
- Some variables were analyzed using employee counts rather than attrition rates.
- Attrition rates were not calculated for every available variable.
- Income and training hours were primarily analyzed as distributions.
- Additional statistical analysis could be performed to investigate relationships between variables more deeply.
