# U.S. Treasury Cash Balance ETL

## Overview
This project fetches operating cash balance data from the U.S. Treasury via the Fiscal Data API and processes it for analysis. The script performs ETL (Extract, Transform, Load) operations to clean, structure, and visualize Treasury account activity over time.

## Features
- Fetch data from the Fiscal Data API using `requests`  
- Clean and transform the dataset using `pandas`  
- Calculate daily changes and percent changes in account balances  
- Resample data to compute weekly averages for trend analysis  
- Plot daily changes by account type and weekly average balances  
- Save processed data to CSV for further analysis

## Data Source
- Fiscal Data API: U.S. Treasury operating cash balance endpoint

## Key Steps
1. Load data from the API  
2. Set a MultiIndex (`record_date`, `account_type`) for easier slicing and grouping  
3. Remove unnecessary or redundant columns (`src_line_nbr`, `record_calendar_month`, etc.)  
4. Convert `record_date` to datetime and set as index for time-based operations  
5. Calculate daily changes and percent changes for account activity  
6. Resample data weekly to compute average balances  
7. Visualize trends with line plots for weekly averages and daily changes by account type  
8. Save the cleaned dataset to CSV

## Requirements
- Python 3.x  
- pandas  
- requests  
- matplotlib  

Dependencies are listed in `requirements.txt`.

