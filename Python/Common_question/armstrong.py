def is_armstrong(num):
    """
    Checks if a given number is an Armstrong number.

    Args:
        num: The integer to check.

    Returns:
        True if the number is an Armstrong number, False otherwise.
    """
    num_str = str(num)  # Convert the number to a string to get its digits
    num_digits = len(num_str)  # Get the number of digits

    sum_of_powers = 0
    for digit_char in num_str:
        digit = int(digit_char)  # Convert digit character back to an integer
        sum_of_powers += digit ** num_digits

    return sum_of_powers == num

# Example usage:
number_to_check = 153
if is_armstrong(number_to_check):
    print(f"{number_to_check} is an Armstrong number.")
else:
    print(f"{number_to_check} is not an Armstrong number.")

number_to_check = 371
if is_armstrong(number_to_check):
    print(f"{number_to_check} is an Armstrong number.")
else:
    print(f"{number_to_check} is not an Armstrong number.")

number_to_check = 123
if is_armstrong(number_to_check):
    print(f"{number_to_check} is an Armstrong number.")
else:
    print(f"{number_to_check} is not an Armstrong number.")