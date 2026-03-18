# U.S. Treasury Cash Balance ETL

## Project Objective
This project extracts, transforms, and loads U.S. Treasury operating cash balance data from the Fiscal Data API to prepare it for analysis and visualization.  

The goal is to provide actionable insights into account activity trends over time, supporting financial analysis and reporting.

---

## Data Source
- **Fiscal Data API** — U.S. Treasury operating cash balance endpoint  
- Contains daily records of cash balances by account type

---

## ETL Process Overview

The project performs the following steps:

1. **Extract**  
   - Fetch data from the Fiscal Data API using Python's `requests` library

2. **Transform**  
   - Remove redundant/unnecessary columns (`src_line_nbr`, `record_calendar_month`, etc.)  
   - Convert `record_date` to datetime and set as index  
   - Set MultiIndex (`record_date`, `account_type`) for easier grouping and slicing  
   - Calculate daily changes and percent changes in account balances  
   - Resample data weekly to compute average balances

3. **Load**  
   - Save cleaned, processed dataset to CSV for further analysis or visualization

---

## Analysis & Visualization

- Plotted **daily changes by account type** to identify volatility patterns  
- Plotted **weekly average balances** to highlight trends over time  
- Enables insights into account-specific trends and Treasury cash flow behavior

---

## Key Skills Demonstrated

- API data extraction using Python (`requests`)  
- Data cleaning and transformation using pandas  
- Time series manipulation and resampling  
- Calculation of derived metrics (daily changes, percent changes)  
- Visualization with `matplotlib`  
- ETL workflow and reproducible data processing

---

## Requirements

- Python 3.x  
- pandas  
- requests  
- matplotlib  
- All dependencies listed in `requirements.txt`

---

## Project Files

- `treasury_etl.py` — Python script performing ETL operations  
- Processed CSV outputs for cleaned and aggregated Treasury data  
- Visualizations (PNG or notebook output) showing trends over time