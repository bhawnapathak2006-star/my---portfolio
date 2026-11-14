CREATE DATABASE hr_analytics;
USE hr_analytics;

SELECT * FROM `hr analytic`;

# count the total number of employees in your dataset
SELECT COUNT(EmpID)
FROM `hr analytic`;

#count the no. of employees work in each department
SELECT Department,Count(EMPID)
FROM `hr analytic`
GROUP BY Department;

# how does attrition vary by gender?
SELECT Gender,Attrition,count(EMPID)
FROM `hr analytic`
GROUP BY Gender,Attrition;

# what is the average monthly income for each job role?
SELECT jobrole,AVG(MonthlyIncome)
FROM `hr analytic`
GROUP BY Jobrole;

# what is the youngest and oldest employee in the dataset
SELECT MIN(AGE) AS youngest, MAX(AGE) AS oldest
FROM `hr analytic`;

# how does attrition vary by education field
SELECT EducationField, Attrition, count(EducationField)
FROM `hr analytic`
GROUP BY EducationField, Attrition;

#calculate the attrition rate across different travel frequencies, comparing how often employees travel for work
SELECT attrition, BusinessTravel, COUNT(*)
FROM `hr analytic`
GROUP BY attrition, BusinessTravel;


