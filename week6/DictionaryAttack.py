#!/usr/bin/python3
import itertools
import hashlib
import string

def read_password_file(file_path):
    try:
        with open(file_path) as hash_file:
            content = hash_file.read().strip()
            return content
    except FileNotFoundError:
        print(f"File '{file_path}' not found.")
        return None

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

# Read the password from the file
password_file_path = "password.txt"
password = read_password_file(password_file_path)

if password:
    result = brute_force(password, max_length=4)
    if result:
        print(f"Password found: {result}")
    else:
        print("Password not found.")

# Read the password from the file
#password_file_path = "password.txt"
#password = read_password_file(password_file_path)


##open the wordlist
#with open("wordlist.txt", "r") as wordlist:
    #repeat for each word
 #   for word in wordlist.readlines():
  #      word = word.rstrip()
        #hash the word
   #     wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
    #    print(f"Trying password {word}:{wordlistHash}")
        #if the hash is the same as the correct password's hash then we have cracked the password!
     #   if(wordlistHash == passwordHash):
      #      print(f"Password has been cracked! It was {word}")
       #     break