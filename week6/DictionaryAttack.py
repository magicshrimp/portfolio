#!/usr/bin/python3
import itertools
import hashlib
import string

#this function pulls the hash value from the file_path variable established later in the script
def read_password_file(file_path):
    try:
        with open(file_path) as hash_file:
            content = hash_file.read().strip()
            return content
    except FileNotFoundError:
        print(f"File '{file_path}' not found.")
        return None

#this function generates the password using lower and uppercase letters, numbers and special characters, and converts password guesses to hash
def brute_force(password, max_length=4):
    characters = string.ascii_letters + string.digits + string.punctuation
    gen = itertools.product(characters, repeat=max_length)
    # Hashing the password
    hashed_password = hashlib.sha256(password.encode("utf-8")).hexdigest()
    for guess in gen:
        attempt = ''.join(guess)
        print(f"Trying: {attempt}")  # Display the current attempt
        if hashlib.sha256(attempt.encode("utf-8")).hexdigest() == hashed_password:
            return attempt
    return None

#this establishes the file path of the hash value
password_file_path = "password.txt"
password = read_password_file(password_file_path)

if password:
    result = brute_force(password, max_length=4)
    if result:
        print(f"Password found: {result}")
    else:
        print("Password not found.")

