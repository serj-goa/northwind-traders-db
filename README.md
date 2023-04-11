# Northwind Traders DB

#### _The project is aimed at working with the Northwind Traders database (designing additional database tables, loading / unloading data, building an ER diagram, writing SQL queries)._

---

*Built with:*

[<img src="https://img.shields.io/badge/python-3.9-blue?style=for-the-badge&logo=Python">](https://www.python.org/)
[<img src="https://img.shields.io/badge/PostgreSQL-14.6-blue?style=for-the-badge&logo=PostgreSQL">](https://www.postgresql.org/)

---

**The database contains the following detailed information:**

1. Clients of Northwind Traders who buy goods from the company (table ***customers***)
2. Information about the goods that the company trades (table ***products***)
3. Groups / categories of goods (table ***categories***)
4. Information about employees of Northwind Traders (table ***employees***)
5. Information about carriers that deliver goods to end customers (table ***shippers***)
6. Information on contracts / orders (table ***orders***)
7. Detailed information on contracts / orders (table ***order_details***)
8. Information about suppliers is stored in the table ***suppliers***


***fill_db.sql*** - script for filling the current Northwind Traders database.


***suppliers.json*** - json file with collected data on suppliers.


***fill_suppliers.sql*** - automatically generated sql-script with queries for processing suppliers 
                       from the data of the suppliers.json file

---

**Project composition:** 
1. Creation of the northwind_traders database and filling it with data (fill_db.sql) 
   is carried out independently using PostgreSQL or through the terminal 
   (an example is given in the screen_terminal folder).
2. A new suppliers table is designed and populated with the data from the suppliers.json file.
3. Added information about the supplier to the table with goods.
4. An ER diagram of the final database has been built (located in the scheme_db folder).
5. A script was written with SQL queries to select data for the pages of the Northwind Traders internal portal.


**SQL queries execute:**

1. Page "Customers" (customers_page):
    - count the number of customers;
    - select all unique combinations of cities and countries in which customers are "registered";
    - find customers and employees serving their orders, such as customers and employees from the city of London, 
      and delivery is carried out by Speedy Express. Display the customer's company and the full name of the employee;
    - find customers who have not made a single order. Display the name of the customer and order_id.

<br />

2. Orders page (orders_page):
    - select all orders sorted by required_date (desc) and sorted by ship date (asc);
    - find the average value of the days leaving for delivery from the date the order was formed in the USA;
    - find the amount for which there are goods (quantity * price) and those that are not withdrawn from sale 
      (see the discontinued field).

<br />

3. Page "Employees" (employees_page):
    - select records of employees (including columns for first name, last name, phone number, region) 
      in which the region is unknown;
    - choose such countries in which customers and suppliers are "registered" at the same time, 
      but at the same timeworkers are not "registered" in them.

<br />

4. Page "Products" (products_page):
    - find active (see the discontinued field) products from the Beverages and Seafood categories, 
      of which there are less than 20 units on sale. Displays the name of the products, the number of units on sale, the name of the contact of the supplier and his phone number.
