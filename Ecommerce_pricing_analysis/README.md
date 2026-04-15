# Ecommerce Pricing and Revenue Analysis (SQL)

## Project Objective

This project analyzes a 36-month ecommerce dataset to understand how pricing strategy, discount levels, and promotional events impact revenue and sales volume.

The goal is to identify patterns that help businesses:

- Optimize discount strategies  
- Improve revenue performance  
- Understand how promotions influence customer purchasing behavior  

**Key business questions:**

- How do discounts affect revenue and units sold?  
- Do promotional events increase performance?  
- What discount levels maximize revenue?  
- How does pricing strategy vary across product categories and events?  

---

## Dataset Description

The dataset contains ecommerce transaction data with pricing, customer, and sales performance information.

**Key columns used:**

- `order_date` — transaction date  
- `category` — product category  
- `base_price` — original product price  
- `discount_percent` — discount applied to product  
- `final_price` — price after discount  
- `units_sold` — quantity sold  
- `revenue` — total revenue generated  
- `sales_event` — promotion type (festival or normal)  
- `customer_gender / customer_age` — customer demographics  
- `competition_intensity / inventory_pressure` — market conditions  

---

## Data Validation and Cleaning

Before analysis, the dataset was inspected and validated:

- Checked for duplicate records using aggregation queries (none found)  
- Checked for missing values in key columns  
- Inspected table structure using PRAGMA  
- Explored data distributions and summary metrics  
- Verified numeric fields for aggregation consistency  

This ensured reliable results before performing business analysis.

---

# E-Commerce Discount Strategy Analysis

## Project Overview

This project analyzes how discount levels influence revenue, pricing, and sales volume in an e-commerce dataset.  
The goal was to determine whether deeper discounts consistently increase revenue or whether a balanced pricing strategy produces better outcomes.

The analysis focuses on identifying the relationship between **discount levels, unit sales, pricing, and total revenue**, and translating those findings into actionable business insights.

An interactive visualization dashboard was built to present these results.

---

## Interactive Dashboard

An interactive dashboard was created using Tableau to visualize the relationships between discount levels, revenue, pricing, and sales volume.

The dashboard includes:

- Revenue trends over time by discount tier
- Revenue performance across discount levels
- Order volume and units sold by discount tier
- Average final price comparison across discount groups

**View the interactive dashboard:**  
https://public.tableau.com/views/discount_analysis/Dashboard1?:language=enUS&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

---

## Analysis Approach

The analysis focused on understanding how pricing and discounts influence revenue performance.

### Key methods

- Grouped discount percentages into buckets:
  - No discount
  - Low discount (0–10%)
  - Medium discount (10–30%)
  - High discount (30%+)

- Compared revenue performance across discount groups
- Analyzed order volume and units sold across discount tiers
- Compared performance across sales events (festival vs normal)
- Examined the relationship between base price and discount level
- Calculated revenue per unit sold
- Evaluated differences across product categories and promotional types

SQL aggregations (`GROUP BY`, `CASE`, `AVG`, `COUNT`) were used to identify patterns and summarize performance across these dimensions.

---

## Key Findings

- Higher discount levels generated the **largest sales volume (units sold)**.
- Lower discount tiers maintained **higher average final prices per unit**.
- **Mid-range discount tiers produced the highest overall revenue**, suggesting an optimal balance between pricing and sales volume.
- Festival sales events generally involved **higher discount levels and increased purchasing activity**.
- Deep discounts increased units sold but did **not always maximize total revenue outside major promotional periods**.

These results suggest that discounting strategies must balance **price reduction and demand stimulation** to achieve optimal financial outcomes.

---

## Business Insights

- Moderate discount levels appear to provide the **best balance between price and sales volume**, producing the strongest revenue performance.
- Aggressive discounting significantly increases purchase volume but can reduce total revenue due to lower per-unit pricing.
- Promotional events can support **deeper discounts** because customer demand is already elevated during those periods.
- Outside major promotional periods, **moderate discounting strategies may be more effective for revenue optimization**.
- Higher discount tiers may still be useful for **inventory reduction or clearance campaigns**, where moving product volume is prioritized over maximizing revenue per unit.

---

## 🔹 Recommendations & Key Takeaways

Based on the analysis of discount levels, units sold, revenue, and estimated profit, the following strategies are recommended for e-commerce pricing:

### Recommendations

1. **Adopt Moderate Discounts (10–25%) by Default**  
   - Produces the highest overall revenue and strong profit margins.  
   - Balances per-unit price with increased sales volume.  
   - Example: Medium discounts → +15% revenue vs baseline; units sold ↑ 20%.

2. **Reserve Deep Discounts (>30%) for Promotions or Inventory Clearance**  
   - Drives large volume increases but may reduce revenue/profit if used outside high-demand periods.  
   - Example: High discounts → units sold ↑ 50% but revenue ↓ 10%.

3. **Segment by Product Category and Sales Event**  
   - High-demand products tolerate slightly higher discounts; premium/low-demand products maintain moderate or no discount to preserve perceived value.

4. **Continuously Monitor Revenue and Profit Metrics**  
   - Measure profit per unit, total revenue, and units sold dynamically.  
   - Adjust discounts based on inventory, competition, and customer response.

5. **Leverage Promotions Strategically**  
   - Festivals or special events justify deeper discounts without compromising overall revenue.  
   - Avoid blanket high discounts outside high-demand periods.

### Key Takeaways

- **Optimal discounting balances revenue and demand.** Medium discounts (10–30%) produce the highest total revenue and healthy margins.  
- **Promotional events justify deeper discounts.** Outside these periods, aggressive discounting reduces profitability.  
- **Data-driven monitoring is critical.** Tracking revenue, units sold, and profit ensures pricing decisions maximize financial outcomes.  
- **Strategic segmentation works.** Discount levels should vary by category and event to optimize results across the catalog.

> By applying these strategies, businesses can maximize revenue, maintain pricing integrity, and make informed, data-driven pricing decisions.
 
---

## Data Limitations

The dataset contains several structural limitations that affect certain types of analysis:

- Order dates appear only on the **last day of each month**, limiting detailed time-series analysis.
- Each month contains a **fixed number of orders**, which does not reflect real-world transaction variability.

While these constraints limit some analyses (such as daily sales patterns or realistic growth modeling), the dataset still supports meaningful exploration of how **discount strategies influence pricing, revenue, and sales volume**.

---

## Tools Used

- SQL (SQLite)
- DB Browser for SQLite
- Tableau Public (data visualization)

---

## Project Files

- `analysis.sql` — SQL queries used for data analysis
- Dataset used for analysis
- Tableau dashboard visualization
- README documentation explaining the analysis process and findings