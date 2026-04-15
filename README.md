# Michael's Data Wrangling Portfolio

Welcome to my data wrangling portfolio! This repository showcases my ability to clean, manipulate, and analyze datasets using **Python (pandas)**, **SQL**, and **R** producing actionable insights and portfolio-ready outputs. Each project demonstrates real-world skills and techniques relevant to data analysis, reporting, and automation.

---

## Projects Overview

### 1. HR Attrition Analysis (R)

- **Description:** Analyzed employee attrition using the IBM HR Analytics dataset in R, focusing on identifying key factors that contribute to employee turnover. The project combines exploratory data analysis, feature engineering, and interaction analysis to uncover patterns in attrition behavior.
- **Key Skills:** R, dplyr, ggplot2, data wrangling, feature engineering, grouped analysis, data visualization, interpreting categorical relationships, R Markdown reporting
- **Highlights:**
  -Analyzed relationships between attrition and factors such as overtime, income level, job involvement, and job role
  -Created income group categories to improve interpretability of salary data
  -Identified strong drivers of attrition, including overtime and low job involvement
  -Explored interaction effects (e.g., income + overtime, involvement + overtime) to uncover compounding risk factors
  -Found that employees exposed to multiple risk factors (low income + overtime + low involvement) had the highest attrition rates
  -Produced a fully structured R Markdown report with clear insights, visualizations, and business-focused recommendations

### 2. E-Commerce Discount Strategy Analysis
- **Description:** Investigated how discount levels influence revenue, pricing, and sales volume in an e-commerce dataset. The project combined SQL analysis with an interactive Tableau dashboard to evaluate the trade-offs between higher discounts and revenue performance.
- **Key Skills:** SQL aggregations, `CASE` statements for discount binning, grouping and summarization, business metric analysis, and data visualization with Tableau.
- **Highlights:**
  - Grouped discount percentages into tiers (No, Low, Medium, High) to evaluate pricing strategy.
  - Compared revenue, order count, units sold, and average final price across discount levels.
  - Identified a trade-off where higher discounts increased sales volume but reduced per-unit price.
  - Found that **moderate discount levels produced the highest overall revenue**, suggesting an optimal balance between price and demand.
  - Built an interactive Tableau dashboard to visualize revenue trends and support business recommendations.

### 3. Treasury API to Pandas Dataset Analysis
- **Description:** Focused on U.S. Treasury operating cash balance data to extract trends in account activity over time.
- **Key Skills:** Advanced pandas operations, API data extraction, time series manipulation, string handling, and conditional transformations.
- **Highlights:** Fetched and cleaned Treasury data via the Fiscal Data API, calculated daily and weekly balance changes, visualized trends by account type, and prepared a ready-to-use dataset for further analysis.

### 4. Spotify Dataset Analysis (SQL)
- **Description:** Analyzed a Spotify songs dataset using SQL queries to explore artist popularity, genre distribution, label performance, and top tracks.
- **Key Skills:** `SELECT`, `GROUP BY`, `ORDER BY`, `HAVING`, window functions (`ROW_NUMBER()`), aggregations, filtering.
- **Highlights:** 
  - Identified artists with the highest average popularity.
  - Found top songs per genre and self-produced tracks.
  - Explored genre diversity among artists.

### 5. Movies Dataset Analysis 1
- **Description:** Used pandas to clean and analyze multiple movie datasets, including movie metadata and user ratings, to create a unified dataset ready for exploration.
- **Key Skills:** DataFrame operations, `groupby`, filtering, aggregations, merging datasets, handling missing values, text cleaning with regex.
- **Highlights:** Cleaned movie titles by removing year parentheses and merged datasets on `movieId` and `title`. Identified the top-rated movies and explored rating trends by genre.

### 6. Movies Dataset Analysis 2
- **Description:** Applied data wrangling techniques to Netflix movie and user rating datasets to uncover trends in ratings and user behavior.
- **Key Skills:** Handling missing data, reshaping DataFrames, merging datasets, grouping, filtering, calculating aggregates, and visualizing results.
- **Highlights:** Merged movie and rating datasets, identified top-rated movies and most active/generous users, analyzed rating trends by release decade, and visualized key insights with histograms and bar charts.

### 7. Sales Analysis
- **Description:** Conducted exploratory data analysis and preprocessing on a Kaggle JSON sales dataset to uncover regional and product-level trends.
- **Key Skills:** Aggregations, pivot tables, date/time handling, data cleaning, and visualization.
- **Highlights:** Identified top-performing states, regions, and products; visualized sales trends with plots; and exported a cleaned dataset for reporting and further analysis.

### 8. Audible Cleanup
- **Description:** Performed end-to-end data cleaning and merging on messy Audible-style datasets, including users, sales, and listening activity. Standardized inconsistent strings, dates, and currency fields to produce analysis-ready tables.
- **Key Skills:** Data cleaning, handling missing values, parsing multiple date formats, string manipulation, numeric/currency conversion, relational merges, and documentation of workflow.
- **Highlights:** Cleaned and merged user, sales, and activity datasets; filled missing values thoughtfully; standardized book titles and dates; prepared CSV outputs ready for SQL queries and further analysis; and documented all steps in a polished Jupyter notebook.

---

## Skills Demonstrated
- **Data Wrangling & Analysis:** Python (pandas), SQL, R
- **Data Cleaning:** Handling missing values, duplicates, data type conversions
- **Aggregation & Grouping:** Summarizing datasets efficiently
- **Filtering & Conditional Logic:** Extracting targeted insights
- **Basic Data Exploration & Visualization:** Identifying trends and patterns

---

## Notes
- All projects are designed to be **portfolio-ready**, with clean, reproducible code.
- SQL projects can be executed in a MySQL environment.
- Pandas projects are built in Python 3 using virtual environments (`venv`).
- R projects are built in RStudio environment.

---

## Next Steps
- Expand SQL portfolio with additional datasets and complex queries.
- Integrate visualizations to complement analyses.
- Continuously refine projects based on feedback and new datasets.

---

Thank you for exploring my data wrangling portfolio! Each project highlights not just technical skill, but the ability to turn messy datasets into clear, actionable insights.
