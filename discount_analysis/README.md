**Ecommerce Pricing and Revenue Analysis (SQL)**



**Project Objective**

This project analyzes a 36-month ecommerce dataset to understand how pricing strategy, discount levels, and promotional events impact revenue and sales volume.

The goal is to identify patterns that help businesses optimize discount strategies, improve revenue performance, and understand how promotions influence customer purchasing behavior.



**Key business questions:**

How do discounts affect revenue and units sold?

Do promotional events increase performance?

What discount levels maximize revenue?

How does pricing strategy vary across product categories and events?



**Dataset Description**

The dataset contains ecommerce transaction data with pricing, customer, and sales performance information.



**Key columns used:**

order\_date — transaction date

category — product category

base\_price — original product price

discount\_percent — discount applied to product

final\_price — price after discount

units\_sold — quantity sold

revenue — total revenue generated

sales\_event — promotion type (festival or normal)

customer\_gender / customer\_age — customer demographics

competition\_intensity / inventory\_pressure — market conditions



**Data Validation and Cleaning**

Before analysis, the dataset was inspected and validated:

Checked for duplicate records using aggregation queries (none found)

Checked for missing values in key columns

Inspected table structure using PRAGMA

Explored data distributions and summary metrics

Verified numeric fields for aggregation consistency

This ensured reliable results before performing business analysis.



**Analysis Approach**

The analysis focused on understanding how pricing and discounts influence revenue performance.



**Key methods:**

Grouped discount percentages into buckets:

&nbsp;	No discount

&nbsp;	Low discount (0–10%)

&nbsp;	Medium discount (10–30%)

&nbsp;	High discount (30%+)

Compared average revenue and units sold across discount groups

Compared performance across sales events (festival vs normal)

Examined relationship between base price and discount level

Calculated revenue per unit sold

Compared performance across product categories and promotion types

SQL aggregations (GROUP BY, CASE, AVG) were used to identify patterns.



**Key Findings**

High discount levels generated the highest average revenue and units sold overall.

Festival sales events had higher average discounts and higher revenue than normal sales periods.

Lower-priced products tended to receive higher discounts.

During normal sales periods, medium discounts produced the highest revenue.

High discounts increased sales volume but did not always maximize revenue outside promotional events.

Revenue performance varies depending on both discount level and event type.



**Business Insights**

Promotional events benefit from aggressive discount strategies due to increased customer demand.

Outside major promotions, moderate discounts may provide better revenue optimization.

Pricing strategy should vary based on product base price and sales context.

Businesses can increase revenue by aligning discount levels with promotional timing.



**Tools Used**

SQL (SQLite)

SQLite DB Browser



**Project Files**

analysis.sql — SQL queries used for data validation and analysis

Dataset file used for analysis

README documentation explaining process and findings

