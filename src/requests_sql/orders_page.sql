-- All orders sorted by required_date (desc) and also sorted by ship date (asc)
SELECT * FROM orders
ORDER BY required_date DESC, shipped_date;

-- The average value of the days leaving for delivery from the date the order was placed in the USA
SELECT ROUND(AVG(shipped_date - order_date))
FROM orders
WHERE ship_country = 'USA';

-- The amount for which there are goods (quantity * price)
-- that are not withdrawn from sale (discontinued field)
SELECT SUM(units_in_stock * unit_price) as total_product_sum
FROM products
WHERE DISCONTINUED = 0;
