-- Number of customers
SELECT COUNT(customer_id)
FROM customers;

-- All unique combinations of cities and countries in which customers are registered
SELECT country, city
FROM customers
GROUP BY country, city;

-- Customers and employees serving their orders are from the city of London,
-- and delivery is carried out by Speedy Express.
SELECT customers.company_name as company, employees.first_name as name, employees.last_name as surname
FROM orders
JOIN customers ON customers.customer_id = orders.customer_id
JOIN employees ON employees.employee_id = orders.employee_id
JOIN shippers ON shippers.shipper_id = orders.ship_via
WHERE customers.city = 'London' AND employees.city = 'London' AND shippers.company_name = 'Speedy Express';

-- Customers who have not placed a single order
SELECT company_name, orders.order_id
FROM customers
LEFT JOIN orders ON orders.customer_id = customers.customer_id
WHERE orders.order_id IS NULL;
