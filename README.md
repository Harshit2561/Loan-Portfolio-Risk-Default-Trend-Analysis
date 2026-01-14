# Bank Loan Default Risk & Time-Series Analysis

## Overview
This project analyzes consumer loan default behavior using Lending Club data to identify credit risk patterns and study how default rates change over time.  
It follows an end-to-end analytics workflow using Python and SQL.

---

## Business Problem
Banks face losses when borrowers default on loans.  
This project answers:
- What is the overall default rate?
- Which credit grades and loan terms are riskier?
- How does default risk evolve over time?

---

## Tools Used
- Python (Pandas, NumPy, Matplotlib)
- MySQL
- Jupyter Notebook
- Lending Club Loan Data (Kaggle)

---

Loan_Portfolio_Risk_Default_Trend_Analysis/
│
├── main.ipynb
│
├── dataset/
│   └── loan.csv                # Raw dataset (not tracked on GitHub)
│
├── output/
│   ├── loan_clean.csv          # Cleaned dataset (not tracked)
│   ├── final_loan_dataset.csv  # Final dataset (not tracked)
│   ├── default_by_grade.png
│   ├── default_by_term.png
│   ├── monthly_default_trend.png
│   └── rolling_default_trend.png
│
├── sql/
│   └── schema_and_load.sql
│
└── README.md

Note: CSV datasets are excluded from GitHub due to file size limits.
They can be recreated by running main.ipynb or downloaded from Kaggle.


---

## Workflow

### 1. Data Preparation
- Loaded raw loan data
- Selected relevant columns
- Created a cleaned dataset for analysis and SQL loading

### 2. SQL Data Storage
- Created MySQL database and table
- Loaded cleaned data into SQL
- Used SQL as persistent storage

### 3. Data Cleaning & Feature Engineering (Python)
- Loaded data into Python
- Converted data types and handled missing values
- Created `default_flag` to identify loan defaults

### 4. Exploratory Data Analysis
- Calculated overall default rate
- Analyzed default risk by credit grade and loan term
- Visualized risk distribution

### 5. Time-Series Analysis
- Converted issue dates to datetime
- Analyzed monthly default trends
- Applied rolling averages to observe long-term patterns

---

## Key Insights
- Overall default rate is ~11–12%
- Lower credit grades have higher default risk
- 60-month loans are riskier than 36-month loans
- Recent loans show lower defaults due to limited maturity

---

## Outputs
- final_loan_dataset.csv
- Monthly Default Rate Trend  
- 3-Month Rolling Average Trend  
- default_by_grade.png
- default_by_term.png


(Stored in `output/` folder)

---

## Author
Harshit Singh  
B.Tech (CSE), DTU
