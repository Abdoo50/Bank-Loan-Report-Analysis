Select * From bank_loan_data

-- 1. Total Number of Applications for Loan
SELECT Count(id) as Total_Applications From bank_loan_data

-- 2. MTD Loan Applications
SELECT COUNT(id) AS MTD_Total_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 12

-- 3. PMTD Loan Applications
SELECT COUNT(id) AS PMTD_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 11

--------------------------------------------------------------------
-- 4. Total Funded Amount
Select SUM(loan_amount) as Total_Funded_Amount From bank_loan_data;

-- 5. MTD Total Funded Amount
Select SUM(loan_amount) as MTD_Total_Funded_Amount From bank_loan_data
Where MONTH (issue_date) = 12 AND YEAR (issue_date) = 2021;

-- 6. PMTD Total Funded Amount
Select SUM(loan_amount) as PMTD_Total_Funded_Amount From bank_loan_data
Where MONTH (issue_date) = 11 AND YEAR (issue_date) = 2021;

-----------------------------------------------------------------------
-- 7. Total Amount Recieved
Select SUM(total_payment) as Total_Amount_Recieved From bank_loan_data;

-- 8. MTD Total Amount Recieved
Select SUM(total_payment) as Total_Amount_Recieved From bank_loan_data
Where MONTH(issue_date) = 12 and YEAR(issue_date) =2021;

-- 9. PMTD Total Amount Recieved
Select SUM(total_payment) as Total_Amount_Recieved From bank_loan_data
Where MONTH(issue_date) = 11 and YEAR(issue_date) =2021;

------------------------------------------------------------------------------
-- 10. Average Interest Rate
SELECT Round(AVG(int_rate)*100, 2) as Average_Interest_Rate From bank_loan_data;


-- 13. PMTD Average Interest Rate
SELECT Round(AVG(int_rate)*100, 2) as Average_Interest_Rate From bank_loan_data
WHERE MONTH(issue_date) = 12;


-- 12. PMTD Average Interest Rate
SELECT Round(AVG(int_rate)*100, 2) as Average_Interest_Rate From bank_loan_data
WHERE MONTH(issue_date) = 11;

---------------------------------------------------------------------------------
-- 13. DTI
SELECT ROUND(AVG(dti)*100, 2) AS Avg_DTI FROM bank_loan_data;

-- 14. MTD Avg DTI
SELECT ROUND(AVG(dti)*100, 2) AS MTD_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

-- 15. PMTD Avg DTI
SELECT ROUND(AVG(dti)*100, 2) AS PMTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 11;
