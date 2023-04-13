from psycopg2 import connect, Error

from src.config.settings import HOST_PG, PORT_PG, PSW_PG, USER_PG


def close_db_connection(connection: connect, cursor: connect) -> None:
    """
    Closes the connection to the database
    :param connection: connect
    :param cursor: connect
    :return: None
    """

    cursor.close()
    connection.close()

    return None


def db_connection(user_db: str = None) -> tuple:
    """
    Creates a connection to the database
    :param user_db: str = None
    :return: tuple
    """

    try:
        connection = connect(user=USER_PG, password=PSW_PG, host=HOST_PG, port=PORT_PG, database=user_db)
        connection.autocommit = True

        cursor = connection.cursor()

    except (Error, Exception) as error:
        return f'Connection FAILED!\n{error}\n', None

    return connection, cursor


def start_query_execution(cursor: connect, some_query: str) -> str:
    """
    Start executing the received request
    :param cursor: connect
    :param some_query: str
    :return: str
    """

    try:
        cursor.execute(some_query)

    except (Error, Exception) as error:
        f'Request execution error!\n{error}\n'

    return f'Request completed successfully.\n'
