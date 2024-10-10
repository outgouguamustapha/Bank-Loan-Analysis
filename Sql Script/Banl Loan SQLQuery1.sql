
SELECT *
FROM bank_loan_data

-- Total Loan Applications
SELECT COUNT(id) AS Total_Loan_Applications
FROM bank_loan_data

-- MTD Total Loan Applications
SELECT COUNT(id) AS MTD_Total_Loan_Applications
FROM bank_loan_data
WHERE MONTH(issue_date) = 12

SELECT COUNT(id) AS PMTD_Total_Loan_Applications
FROM bank_loan_data
WHERE MONTH(issue_date) = 11

-- Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount
FROM bank_loan_data

-- Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data

SELECT SUM(total_payment) AS MTD_Total_Amount_Received
FROM bank_loan_data
WHERE MONTH(issue_date) = 12

-- Average interest rate
SELECT ROUND(AVG(int_rate)*100, 4) AS Average_Interst_Rate
FROM bank_loan_data

SELECT ROUND(AVG(int_rate)*100, 4) AS Average_Debt_Income_Ratio
FROM bank_loan_data
WHERE MONTH(issue_date) = 12

-- Average Debt-to-Income Ratio
SELECT ROUND(AVG(dti)*100, 4) AS Average_Debt_Income_Ratio
FROM bank_loan_data

SELECT ROUND(AVG(dti)*100, 4) AS Average_Debt_Income_Ratio
FROM bank_loan_data
WHERE MONTH(issue_date) = 12
-----------------------------

SELECT loan_status FROM bank_loan_data

-- GOOD LOAN
---- Good Loan Application Percentage
SELECT 
	(COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100) 
	/
	COUNT(id) AS Good_Loan_Percentage
FROM bank_loan_data
---- Good Loan Applications
SELECT COUNT(id) AS Good_Loan_Applications
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'
---- Good Loan Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'
----Good Loan Total Received Amount
SELECT SUM(total_payment) AS Good_Loan_Funded_Amount
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- BAD LOAN
---- Bad Loan Application Percentage
SELECT 
	(COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100) 
	/
	COUNT(id) AS Bad_Loan_Percentage
FROM bank_loan_data
---- Good Loan Applications
SELECT COUNT(id) AS Bad_Loan_Applications
FROM bank_loan_data
WHERE loan_status = 'Charged Off'
---- Good Loan Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount
FROM bank_loan_data
WHERE loan_status = 'Charged Off'
----Bad Loan Total Received Amount
SELECT SUM(total_payment) AS Bad_Loan_Funded_Amount
FROM bank_loan_data
WHERE loan_status = 'Charged Off'

-- Loan Status Grid View
SELECT 
	loan_status,
	COUNT(id) AS Total_Loan_Application,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received,
	ROUND(AVG(int_rate * 100), 4) AS Average_Interest_Rate,
	ROUND(AVG(dti * 100), 4) AS Average_Debt_Income_Ratio
FROM 
	bank_loan_data
GROUP BY
	loan_status

SELECT
	loan_status,
	SUM(loan_amount) AS MTD_Total_Funded_Amount,
	SUM(total_payment) AS MTD_Total_Amount_Received
FROM 
	bank_loan_data
WHERE
	MONTH(issue_date) = 12
GROUP BY 
	loan_status
