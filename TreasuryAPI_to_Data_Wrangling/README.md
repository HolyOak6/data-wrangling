# U.S. Treasury Cash Balance ETL

## Project Objective

This project extracts, transforms, and analyzes U.S. Treasury operating cash balance data via the Fiscal Data API.  

The goal is to understand daily and weekly cash balance trends across account types, identify volatility patterns, and create analysis-ready datasets for visualization and decision-making.

---

## Data Source

- **Fiscal Data API** — U.S. Treasury operating cash balance endpoint  
- Contains daily records of cash balances for multiple account types

**Key columns used:**

- `close_today_bal` — closing balance for the day  
- `open_today_bal` — opening balance for the day  
- `open_month_bal` — opening balance for the month  
- `open_fiscal_year_bal` — opening balance for the fiscal year  
- `daily_change` — computed as `close_today_bal - open_today_bal`  
- `daily_pct_change` — percent change relative to opening balance  
- `record_fiscal_year`, `record_fiscal_quarter`, `record_calendar_year`, `record_calendar_quarter`, `record_calendar_month` — time indicators  
- `account_type` — type of Treasury account  

---

## ETL & Analysis Process

1. **Extract**
   - Fetched raw JSON data from the Fiscal Data API using Python's `requests` library  

2. **Transform**
   - Converted numeric columns from strings to numeric types  
   - Calculated `daily_change` and `daily_pct_change` to track account activity  
   - Removed redundant columns and set a MultiIndex (`record_date`, `account_type`) for easier slicing and grouping  
   - Resampled data weekly to compute trends and averages for analysis  

3. **Load**
   - Saved cleaned, transformed datasets to CSV for further analysis and visualization  

---

## Visualizations

- **Weekly Average Closing Balances**  
  - Provides trend overview over time and highlights seasonal accumulation patterns  

- **Daily Changes by Account Type**  
  - Reveals volatility and unusual fluctuations between different account types  

*(Visualizations created using matplotlib in Python)*  

---

## Key Insights

- **Federal Reserve Account** shows consistently lower daily volatility than Tax & Loan Note Accounts.  
- **Tax & Loan Note Accounts** experience larger daily percent changes, indicating higher variability in cash flows.  
- Weekly averages reveal **gradual accumulation trends** in closing balances, aligning with fiscal calendar expectations.  
- Derived metrics (`daily_change` and `daily_pct_change`) enable quick identification of unusual fluctuations or seasonal patterns.

---

## Recommendations / Use Cases

- Monitor high-volatility accounts (`daily_pct_change`) to prioritize oversight and liquidity management.  
- Use weekly trends to support **forecasting models** or detect anomalous periods in Treasury cash flows.  
- Extend ETL workflow to incorporate additional Treasury datasets for richer financial trend analysis.  
- Visualizations provide actionable insight for decision-making without needing to query raw API data each time.

---

## Skills Demonstrated

- API data extraction using Python (`requests`)  
- Data cleaning, numeric conversion, and transformation using pandas  
- MultiIndex DataFrame manipulation and slicing  
- Time series resampling and trend analysis  
- Calculation of derived metrics (`daily_change`, `daily_pct_change`)  
- Data visualization using `matplotlib`  
- ETL workflow creation, producing reusable, analysis-ready datasets  

---

## Tools Used

- Python 3.x  
- pandas  
- requests  
- matplotlib  
- CSV for processed data outputs  

---

## Project Files

- `treasury_etl.py` — Python script performing ETL operations  
- Processed CSV outputs for cleaned and aggregated Treasury data  
- Visualization outputs (PNG or notebook plots) showing weekly trends and daily changes