import itertools
import string

def brute_force(password, max_length=6):
    characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
    gen = itertools.combinations_with_replacement(characters, max_length)
    for guess in gen:
        attempt = ''.join(guess)
        if attempt == password:
            return attempt
    return None

target_password = "abc6z5"  # Replace with your target password
result = brute_force(target_password)
if result:
    print(f"Password found: {result}")
else:
    print("Password not found.")