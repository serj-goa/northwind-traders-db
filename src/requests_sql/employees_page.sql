-- Records of employees (name, surname, phone, region) in which the region is unknown
SELECT last_name, first_name, home_phone, region
FROM employees
WHERE region IS NULL;

-- Countries where customers and suppliers are registered at the same time,
-- but where workers are not registered
SELECT country FROM customers
INTERSECT
SELECT country FROM suppliers
EXCEPT
SELECT country FROM employees;
