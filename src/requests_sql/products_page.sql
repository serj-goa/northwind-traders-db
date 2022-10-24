-- Active (discontinued) products from the Beverages and Seafood category with less than 20 units on sale
-- (name of products, number of units on sale, supplier contact name and phone number)
SELECT product_name, units_in_stock, suppliers.contact, suppliers.phone
FROM products
JOIN categories ON categories.category_id = products.category_id
JOIN suppliers ON suppliers.id = products.fk_suppliers
WHERE categories.category_name in ('Beverages', 'Seafood')
	  AND products.discontinued = 0
	  AND products.units_in_stock < 20;
