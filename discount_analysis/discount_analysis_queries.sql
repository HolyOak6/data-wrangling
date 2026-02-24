SELECT * FROM indian_ecommerce_pricing_revenue_growth_36_months LIMIT 15;

-- Check for duplicate records in the dataset
-- Counts any repeated order_id values to ensure data integrity
SELECT order_id, COUNT(*) AS count
FROM indian_ecommerce_pricing_revenue_growth_36_months
GROUP BY order_id
HAVING count > 1;

-- Check for null values in order_date
SELECT COUNT(*) AS null_order_date
FROM indian_ecommerce_pricing_revenue_growth_36_months
WHERE order_date IS NULL;

-- Check for null values in category
SELECT COUNT(*) AS null_category
FROM indian_ecommerce_pricing_revenue_growth_36_months
WHERE category IS NULL;

-- Check for null values in base_price
SELECT COUNT(*) AS null_base_price
FROM indian_ecommerce_pricing_revenue_growth_36_months
WHERE base_price IS NULL;

-- Check for null values in discount_percent
SELECT COUNT(*) AS null_discount_percent
FROM indian_ecommerce_pricing_revenue_growth_36_months
WHERE discount_percent IS NULL;

-- Check for null values in final_price
SELECT COUNT(*) AS null_final_price
FROM indian_ecommerce_pricing_revenue_growth_36_months
WHERE final_price IS NULL;

-- Check for null values in units_sold
SELECT COUNT(*) AS null_units_sold
FROM indian_ecommerce_pricing_revenue_growth_36_months
WHERE units_sold IS NULL;

-- Check for null values in revenue
SELECT COUNT(*) AS null_revenue
FROM indian_ecommerce_pricing_revenue_growth_36_months
WHERE revenue IS NULL;


-- Groups orders into discount tiers (No, Low, Medium, High)
-- and calculates average revenue and average units sold per group
-- to analyze how discount levels impact overall sales performance.
SELECT
CASE
    WHEN discount_percent = 0 THEN 'No discount'
    WHEN discount_percent > 0 AND discount_percent < 10 THEN 'Low (0–10%)'
    WHEN discount_percent >= 10 AND discount_percent < 30 THEN 'Medium (10–30%)'
    ELSE 'High (30%+)'
END AS discount_group,
AVG(revenue) AS avg_revenue,
AVG(units_sold) AS avg_units_sold
FROM indian_ecommerce_pricing_revenue_growth_36_months
GROUP BY discount_group
ORDER BY avg_revenue DESC;

-- Compares revenue by product category and discount level
-- to analyze how discount strategies perform across different categories.
SELECT
category,
CASE
    WHEN discount_percent = 0 THEN 'No discount'
    WHEN discount_percent > 0 AND discount_percent < 10 THEN 'Low'
    WHEN discount_percent >= 10 AND discount_percent < 30 THEN 'Medium'
    ELSE 'High'
END AS discount_group,
AVG(revenue) AS avg_revenue
FROM indian_ecommerce_pricing_revenue_growth_36_months
GROUP BY category, discount_group;

-- Calculates average base price per discount tier
-- to evaluate whether higher or lower priced products receive different discount levels.
SELECT
CASE
    WHEN discount_percent = 0 THEN 'No discount'
    WHEN discount_percent > 0 AND discount_percent < 10 THEN 'Low'
    WHEN discount_percent >= 10 AND discount_percent < 30 THEN 'Medium'
    ELSE 'High'
END AS discount_group,
AVG(base_price) AS avg_base_price
FROM indian_ecommerce_pricing_revenue_growth_36_months
GROUP BY discount_group;

-- Compares average discount percentage and average revenue by sales event
-- to evaluate how promotional events impact revenue performance.
SELECT
sales_event,
AVG(discount_percent) AS avg_discount,
AVG(revenue) AS avg_revenue
FROM indian_ecommerce_pricing_revenue_growth_36_months
GROUP BY sales_event;

-- Calculates average revenue per unit sold across all orders
-- to assess overall pricing effectiveness and product profitability.
SELECT
AVG(revenue / units_sold) AS revenue_per_unit
FROM indian_ecommerce_pricing_revenue_growth_36_months;

-- Compares sales performance (units sold and revenue) by sales event and discount level
-- to identify which discount strategies perform best during festivals versus normal periods.
SELECT
sales_event,
CASE
    WHEN discount_percent = 0 THEN 'No discount'
    WHEN discount_percent > 0 AND discount_percent < 10 THEN 'Low'
    WHEN discount_percent >= 10 AND discount_percent < 30 THEN 'Medium'
    ELSE 'High'
END AS discount_group,
AVG(units_sold) AS avg_units_sold,
AVG(revenue) AS avg_revenue
FROM indian_ecommerce_pricing_revenue_growth_36_months
GROUP BY sales_event, discount_group;