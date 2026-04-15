# HR Attrition Analysis

## Overview

This project analyzes employee attrition using the IBM HR Analytics dataset. The goal is to identify the key factors associated with employee turnover and understand how variables such as compensation, workload, and engagement relate to attrition.

## Dataset

* **Source:** IBM HR Analytics Employee Attrition & Performance Dataset (Kaggle)
* **Link:** https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset/data

The dataset contains employee-level information including demographics, job roles, compensation, satisfaction scores, and attrition outcomes.

## Objective

The objective of this analysis is to:

* Identify the primary factors associated with employee attrition
* Evaluate how job-related characteristics, compensation, and engagement impact turnover
* Analyze how combinations of variables interact to influence attrition risk

## Tools & Technologies

* **R**
* **dplyr** (data manipulation)
* **ggplot2** (data visualization)
* **R Markdown** (reporting and reproducibility)

## Analysis Approach

### 1. Data Loading & Inspection

* Loaded dataset and verified structure, dimensions, and missing values

### 2. Exploratory Data Analysis

* Examined relationships between key categorical variables and attrition
* Used proportional tables to identify patterns

### 3. Feature Engineering

* Created income groups from continuous salary data to improve interpretability

### 4. Visualization of Key Drivers

* Used bar charts to highlight differences in attrition across variables

### 5. Interaction Analysis

* Explored how combinations of factors (e.g., income + overtime, involvement + overtime) influence attrition

## Key Findings

* Employees working overtime show significantly higher attrition rates
* Lower income groups experience higher turnover compared to higher income groups
* Job involvement is strongly associated with attrition, with lower involvement linked to higher turnover
* Sales Representative roles show the highest attrition among job categories
* Attrition is highest among employees experiencing multiple risk factors (e.g., low income + overtime)

## Recommendations

* Reduce or better manage overtime to limit burnout-related attrition
* Review compensation structures for lower income employees
* Focus retention efforts on high-risk roles such as Sales Representatives
* Improve employee engagement, particularly for low-involvement employees
* Target interventions toward employees exposed to multiple risk factors

## Conclusion

Attrition in this dataset is primarily associated with workload, compensation, and employee engagement. These factors have the strongest impact when combined, suggesting that turnover is driven by overlapping conditions rather than a single variable.

## Project Structure

* `HR_Attrition_Analysis.Rmd` — full analysis and code
* `HR_Attrition_Analysis.html` — rendered report
* `README.md` — project summary

## How to Run

1. Clone the repository
2. Open the `.Rmd` file in RStudio / Posit
3. Ensure required libraries are installed (`dplyr`, `ggplot2`)
4. Knit the document to reproduce the analysis
