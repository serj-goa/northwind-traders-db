from requests_pg import req_add_column, req_create_main_db, req_create_suppliers, \
                        request_insert_suppliers_data, request_update_products
from setup.connections import close_db_connection, db_connection, start_query_execution

from json import load


def create_empty_file(filepath: str) -> None:
    """
    Creates a new empty file at the specified path
    :param filepath: str
    :return: None
    """

    with open(filepath, 'w'):
        ...


def create_main_db() -> bool:
    """
    Creates the main database.
    :return: bool
    """

    connection, cursor = db_connection()

    if cursor is None:
        print(connection)
        return False  # If the connection fails, the variable contains the error message.

    start_query_execution(cursor, some_query=req_create_main_db)
    print('The database was created successfully.')

    close_db_connection(connection, cursor)

    return True


def generate_sql_script(new_sql_file: str, data_json_file: str) -> None:
    """
    Generates a sql script with queries in the required order
    :param new_sql_file: str
    :param data_json_file: str
    :return: None
    """

    create_empty_file(filepath=new_sql_file)
    save_data(filepath=new_sql_file, data=req_create_suppliers)  # CREATE suppliers table
    all_products = {}

    for idx, supplier in enumerate(get_jsonfile_generator(filepath=data_json_file), 1):

        suppliers_data = parse_suppliers_data(suppliers_data=supplier)
        suppliers_query = request_insert_suppliers_data(suppliers_data)
        save_data(filepath=new_sql_file, data=suppliers_query)  # INSERT values into suppliers table

        all_products[idx] = supplier['products']

    save_data(filepath=new_sql_file, data=req_add_column)  # ADD column to the products table

    for supplier_id, product in all_products.items():
        req_update_product = request_update_products(product, supplier_id)
        save_data(filepath=new_sql_file, data=req_update_product)  # UPDATE fk_suppliers into products table


def get_jsonfile_generator(filepath: str) -> dict:
    """
    Getting a generator from a csv-file
    :param filepath: str
    :return: None
    """

    with open(filepath, encoding='utf-8') as fd:

        for inner_dict in load(fd):
            yield inner_dict


def parse_suppliers_data(suppliers_data: dict[str: str]) -> tuple[str, ...]:
    """
    Parses supplier data for the suppliers table.
    :param suppliers_data: dict[str: str]
    :return: tuple[str, ...]
    """

    # "USA; LA; 70117; New Orleans; P.O. Box 78934"
    data_address: list[str, ...] = suppliers_data['address'].split('; ')

    company_name: str = suppliers_data['company_name']
    contact: str = suppliers_data['contact']

    country = data_address[0]
    city = data_address[3]
    address_info_list = tuple(data for data in (data_address[2], data_address[1], data_address[4]) if data)
    address = ', '.join(address_info_list)

    phone: str = suppliers_data['phone']
    fax: str = suppliers_data['fax']

    # Mayumi's (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#
    homepage_info_list = suppliers_data['homepage'].split('#')
    homepage: str = homepage_info_list[1] if len(homepage_info_list) > 1 else homepage_info_list[0]

    return company_name, contact, country, city, address, phone, fax, homepage


def run_auto_fill_db(name_db: str, sql_main_db: str, sql_upd_db: str) -> None:
    """
    Starts automatic execution of sql scripts with the main data of the company
    and new data on product suppliers.
    :param name_db: str
    :param sql_main_db: str
    :param sql_upd_db: str
    :return: None
    """

    connection, cursor = db_connection(user_db=name_db)

    if cursor is None:
        print(connection)  # If the connection fails, the variable contains the error message.

        return None

    try:
        with open(sql_main_db) as fd:
            start_query_execution(cursor, fd.read())

        with open(sql_upd_db) as fd:
            start_query_execution(cursor, fd.read())

    except KeyboardInterrupt:
        print('The program has been completed.')

    except Exception as error:
        print(f'Unexpected error!\n{error}')

    finally:
        close_db_connection(connection, cursor)

    return None


def save_data(filepath: str, data: str) -> None:
    """
    Saves data to a file, in append mode.
    :param filepath: str
    :param data: str
    :return: None
    """

    with open(filepath, 'a', encoding='utf-8') as fd:
        fd.write(data)
