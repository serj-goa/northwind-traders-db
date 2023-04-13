from typing import Union

from src.config.settings import FILL_DB, NAME_DB, SUPPLIERS_DATA, SUPPLIERS_SQL
from src.utils import create_main_db, generate_sql_script, run_auto_fill_db


STOP_WORDS = ('close', 'exit', 'quit', 'stop')


def get_user_number(limit=2) -> Union[int, str]:
    """
    Getting the menu item number.
    """
    while True:
        user_choice = input('>>> ').strip().lower()

        if user_choice in STOP_WORDS:
            return user_choice

        elif not user_choice.isdigit():
            print('Enter menu item number.')
            continue

        user_choice = int(user_choice)

        if limit and not 0 < user_choice < (limit + 1):
            print('There is no such menu item!')
            continue

        return user_choice


def run_user_choice(user_choice):

    match user_choice:

        case 1:
            generate_sql_script(new_sql_file=SUPPLIERS_SQL, data_json_file=SUPPLIERS_DATA)
            print('sql script with supplier data has been generated.')

        case 2:
            main_db = create_main_db()

            if not main_db:
                print('PostgreSQL connection error!')
                return None

            generate_sql_script(new_sql_file=SUPPLIERS_SQL, data_json_file=SUPPLIERS_DATA)
            print('sql script with supplier data has been generated.')
            run_auto_fill_db(name_db=NAME_DB, sql_main_db=FILL_DB, sql_upd_db=SUPPLIERS_SQL)
            print('Data uploaded successfully.')


def show_start_menu() -> None:
    print('''\nSelect a menu item to continue\n
----------------------------------------------------------------------------
    [1] generate sql script and EXIT.
    [2] create a database "northwind_traders" and fill it with data automatically.
----------------------------------------------------------------------------\n''')
