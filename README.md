# Bank Loan Default Prediction & Time-Series Risk Analysis

## Overview

This project develops an end-to-end machine learning pipeline to analyze historical loan behavior and predict default risk using Lending Club data.

It integrates:

* Exploratory Data Analysis
* Time-Series Trend Analysis
* Feature Engineering
* Machine Learning Classification
* Business-focused Model Evaluation

The objective is to move beyond descriptive analysis and build a predictive system capable of identifying high-risk borrowers before loan approval.

---

## Business Problem

Loan defaults create significant financial losses for lending institutions.

This project aims to answer:

* What is the historical default rate?
* Which borrower segments are riskier?
* How does portfolio risk evolve over time?
* Can we predict future defaults using machine learning?

---

## Dataset

* Lending Club Loan Dataset (Kaggle)
* Raw dataset not tracked due to size constraints
* Reproducible by placing `loan.csv` inside `/dataset`

---

## Tools & Technologies

* Python (Pandas, NumPy, Matplotlib)
* Scikit-learn
* Logistic Regression
* Random Forest
* Time-Series Analysis
* GitHub (reproducible end-to-end pipeline)

---

## Project Structure

```
Bank_Loan_Default_Prediction/
|
|-- main.ipynb                     (end-to-end pipeline)
|
|-- dataset/
|   |-- loan.csv                (raw dataset - not tracked)
|
|-- output/
|   |-- cleaned_dataset.csv
|   |-- default_by_grade.png
|   |-- default_by_term.png
|   |-- monthly_default.png
|   |-- rolling_default.png
|   |-- roc_curve.png
|   |-- feature_importance.csv
|
|-- README.md
```

---

## Workflow

### 1. Data Preparation

* Selected relevant business features
* Converted data types and handled missing values
* Created binary target variable `default_flag`

---

### 2. Exploratory Data Analysis

* Calculated overall default rate
* Compared default rates across credit grades
* Analyzed default risk by loan term
* Identified high-risk borrower segments

---

### 3. Time-Series Analysis

* Analyzed monthly default trends
* Applied rolling averages to capture long-term patterns
* Studied portfolio risk evolution over time

---

### 4. Feature Engineering

Created predictive features including:

* Income-to-loan ratio
* Numeric employment length
* Issue year and month
* Encoded credit grade

---

### 5. Machine Learning Modeling

Built and compared:

* Logistic Regression (class-balanced)
* Random Forest (class-balanced)

Implemented time-based train-test split to simulate real-world forecasting.

---

### 6. Model Evaluation

Evaluated models using:

* Precision
* Recall
* F1-score
* ROC-AUC
* ROC Curve comparison

Addressed severe class imbalance (~1% default rate) using class weighting.

Model performance:

* ROC-AUC ≈ 0.71
* Improved default detection recall (~40%) after imbalance correction

---

## Key Insights

* Default risk varies significantly across credit grades
* Longer-term loans show higher default rates
* Time-based analysis reveals shifting portfolio risk
* Class imbalance handling substantially improves default detection
* Logistic Regression outperformed Random Forest in detecting default cases.

---

## Business Impact

The model can support:

* Early identification of high-risk borrowers
* Risk-based loan approval decisions
* Portfolio risk monitoring
* Reduction of potential credit losses

---

## How to Run

1. Place `loan.csv` inside `/dataset`
2. Run:

```
python main.ipynb
```

All outputs will be generated inside `/output`.

---

## Author

Harshit Singh
B.Tech (CSE), DTU

---
