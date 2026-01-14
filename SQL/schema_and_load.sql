-- Bank Loan Default Risk Analysis
-- Database schema and data loading script

-- Create database
CREATE DATABASE loan_analysis;
USE loan_analysis;

-- Create loans table
CREATE TABLE loans (
    loan_amnt VARCHAR(50),
    term VARCHAR(50),
    int_rate VARCHAR(50),
    grade VARCHAR(50),
    emp_length VARCHAR(50),
    annual_inc VARCHAR(50),
    loan_status VARCHAR(100),
    issue_d VARCHAR(50)
);

-- Load cleaned CSV data into MySQL
-- NOTE: Update the file path based on your MySQL secure_file_priv setting
LOAD DATA INFILE
'PATH_TO_MYSQL_UPLOADS/loan_clean.csv'
INTO TABLE loans
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Validation queries
SELECT COUNT(*) FROM loans;
SELECT * FROM loans LIMIT 5;

-- Analytical SQL Queries --


-- 1. Total number of loans
SELECT COUNT(*) AS total_loans
FROM loans;


-- 2. Overall default rate
SELECT 
    AVG(CASE 
        WHEN loan_status IN ('Charged Off', 'Default') THEN 1 
        ELSE 0 
    END) AS default_rate
FROM loans;


-- 3. Default rate by credit grade
SELECT 
    grade,
    AVG(CASE 
        WHEN loan_status IN ('Charged Off', 'Default') THEN 1 
        ELSE 0 
    END) AS default_rate
FROM loans
GROUP BY grade
ORDER BY grade;


-- 4. Default rate by loan term
SELECT 
    term,
    AVG(CASE 
        WHEN loan_status IN ('Charged Off', 'Default') THEN 1 
        ELSE 0 
    END) AS default_rate
FROM loans
GROUP BY term;


-- 5. Average loan amount by credit grade
SELECT 
    grade,
    AVG(CAST(loan_amnt AS DECIMAL(10,2))) AS avg_loan_amount
FROM loans
GROUP BY grade
ORDER BY grade;


-- 6. High-risk loans (basic risk filter)
SELECT 
    loan_amnt,
    term,
    int_rate,
    grade,
    loan_status
FROM loans
WHERE grade IN ('D','E','F','G')
LIMIT 10;


-- 7. Loans issued per month
SELECT 
    issue_d,
    COUNT(*) AS loans_issued
FROM loans
GROUP BY issue_d
ORDER BY issue_d;


-- 8. Defaulted loans count by month
SELECT 
    issue_d,
    COUNT(*) AS defaulted_loans
FROM loans
WHERE loan_status IN ('Charged Off', 'Default')
GROUP BY issue_d
ORDER BY issue_d;
