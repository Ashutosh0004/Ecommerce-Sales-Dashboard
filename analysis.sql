create database ecommerce_project;
use ecommerce_project;
select * from sales_data;
-- Total Sales
select sum(sales) from sales_data as Total_Sales;
-- “The business generated a total revenue of approximately 15.7 million, indicating strong overall sales performance.”

-- 2. Category Wise Sales
SELECT 
    Category, SUM(sales)
FROM
    Sales_data
GROUP BY Category;
-- “Technology category generates the highest sales, followed by Office Supplies, indicating strong demand in these segments, while Furniture category significantly underperforms.”

-- 3. Region Wise Sales
SELECT 
    Region, SUM(sales)
FROM
    Sales_data AS Region_Wise_sales
GROUP BY Region;
-- “North region generates the highest sales, making it the top-performing region, while East region contributes the least revenue.”

-- 4. Top 5 Customers
SELECT 
    Customer_ID, sum(Sales) as Top_Customer
FROM
    sales_data 
GROUP BY customer_ID
ORDER BY top_Customer DESC;
-- “A small group of customers contributes significantly to total revenue, indicating the presence of high-value customers.”

-- 5. Profit Analysis
SELECT 
    Category, SUM(Profit) AS Total_Profit
FROM
    sales_data
GROUP BY Category;
-- “All product categories are operating at a loss, with Technology category contributing the highest loss.”

-- 6. Loss Making Category
SELECT 
    Category, SUM(Profit) AS Total_sales
FROM
    sales_data
GROUP BY Category
HAVING Total_sales > 0;

-- 7. Discount Impact
SELECT 
    Discount, AVG(Profit) AS Total_discount
FROM
    sales_data
GROUP BY Discount
ORDER BY Discount;
-- “As discount increases, profit tends to decrease, with higher discount levels leading to negative profitability.”


