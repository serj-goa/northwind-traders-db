from menu import get_user_number, run_user_choice, show_start_menu


def main() -> None:

    show_start_menu()
    user_choice = get_user_number()
    run_user_choice(user_choice)

    print('\nThanks for choosing, bye!')


if __name__ == '__main__':
    main()
