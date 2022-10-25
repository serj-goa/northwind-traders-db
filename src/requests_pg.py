req_add_column = """
ALTER TABLE products ADD COLUMN IF NOT EXISTS fk_suppliers int REFERENCES suppliers(id);

"""
req_create_main_db = "CREATE DATABASE northwind_traders;"
req_create_suppliers = """CREATE TABLE IF NOT EXISTS suppliers (
    id SERIAL PRIMARY KEY,
    company_name varchar(100),
    contact varchar(100),
    country varchar(50),
    city varchar(50),
    address varchar(100),      
    phone varchar(50),
    fax varchar(50),
    homepage varchar(100)
);

"""


def request_insert_suppliers_data(suppliers_data: tuple) -> str:

    company_name, contact, country, city, address, phone, fax, homepage = suppliers_data

    return f"INSERT INTO suppliers " \
           f"(company_name, contact, country, city, address, phone, fax, homepage) " \
           f"VALUES " \
           f"($${company_name}$$, $${contact}$$, '{country}', " \
           f"'{city}', $${address}$$, '{phone}', '{fax}', '{homepage}');\n"


def request_update_products(product: str, supplier_id: int):

    products = (f"$${prod}$$" for prod in product)

    return f"""UPDATE products SET fk_suppliers = {supplier_id} WHERE product_name in ({", ".join(products)});\n"""
