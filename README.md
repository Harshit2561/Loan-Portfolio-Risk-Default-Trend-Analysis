# Bank Loan Default Risk & Time-Series Analysis

OVERVIEW
This project analyzes consumer loan default behavior using Lending Club data to identify credit risk patterns and study how default rates change over time.
It follows an end-to-end analytics workflow using Python and SQL.

BUSINESS PROBLEM
Banks face losses when borrowers default on loans.
This project answers:
- What is the overall default rate?
- Which credit grades and loan terms are riskier?
- How does default risk evolve over time?

TOOLS USED
- Python (Pandas, NumPy, Matplotlib)
- MySQL
- Jupyter Notebook
- Lending Club Loan Data (Kaggle)

PROJECT STRUCTURE

Loan_Portfolio_Risk_Default_Trend_Analysis/
|
|-- main.ipynb
|
|-- dataset/
|   |-- loan.csv                  (raw dataset, not tracked on GitHub)
|
|-- output/
|   |-- loan_clean.csv            (cleaned dataset, not tracked)
|   |-- final_loan_dataset.csv    (final dataset, not tracked)
|   |-- default_by_grade.png
|   |-- default_by_term.png
|   |-- monthly_default_trend.png
|   |-- rolling_default_trend.png
|
|-- sql/
|   |-- schema_and_load.sql
|
|-- README.md

NOTE
CSV datasets are excluded from GitHub due to file size limits.
They can be recreated by running main.ipynb or downloaded from Kaggle.

WORKFLOW

STEP 1: DATA PREPARATION
- Loaded raw loan data
- Selected relevant columns
- Created a cleaned dataset for analysis and SQL loading

STEP 2: SQL DATA STORAGE
- Created MySQL database and table
- Loaded cleaned data into SQL
- Used SQL as persistent storage

STEP 3: DATA CLEANING & FEATURE ENGINEERING (PYTHON)
- Loaded data into Python
- Converted data types and handled missing values
- Created default_flag to identify loan defaults

STEP 4: EXPLORATORY DATA ANALYSIS
- Calculated overall default rate
- Analyzed default risk by credit grade and loan term
- Visualized risk distribution

STEP 5: TIME-SERIES ANALYSIS
- Converted issue dates to datetime
- Analyzed monthly default trends
- Applied rolling averages to observe long-term patterns

KEY INSIGHTS
- Overall default rate is approximately 11–12%
- Lower credit grades show significantly higher default risk
- 60-month loans are riskier than 36-month loans
- Recent loans show lower defaults due to limited maturity

OUTPUTS
- final_loan_dataset.csv
- default_by_grade.png
- default_by_term.png
- monthly_default_trend.png
- rolling_default_trend.png
(All stored in the output folder)

AUTHOR
Harshit Singh
B.Tech (CSE), DTU
