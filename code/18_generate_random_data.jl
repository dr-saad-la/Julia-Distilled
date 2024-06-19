# ---------------------------------------------------------- 
#    Chap 01: Generating Random Data in Julia
#    Author: Dr. Saad Laouadi
# 
#.   Copyright to Dr Saad Laouadi
#   Using the examples from the notebook directly into 
#.  lecture is not allowed.
# -----------------------------------------------------------

function print_banner(char::Char, num_chars::Int, message::String)
    border = repeat(string(char), num_chars)
    
    total_padding = num_chars - length(message)
    left_padding = total_padding ÷ 2
    right_padding = total_padding - left_padding
    
    centered_message = repeat(" ", 
        left_padding) * message * repeat(" ", right_padding)
    
    println(border)
    println(centered_message)
    println(border)
end;

# Test we have Faker and Impostor modules available in this environment
using Faker
using Impostor

println("Faker.jl and Impostor.jl installed successfully!")

print_banner('+', 62, "Generating random data with Faker")

# Generating random names
name = Faker.male_first_name()
println("Name: ", name)

# Generating random addresses
address = Faker.address()
println("Address: ", address)

# Generating random email addresses
email = Faker.email()
println("Email: ", email)

# Generating random phone numbers
phone_number = Faker.phone_number()
println("Phone Number: ", phone_number)

# Generating random company names
company = Faker.company()
println("Company: ", company)

# Generating random credit card numbers
credit_card = Faker.credit_card_number()
println("Credit Card Number: ", credit_card)

# Generating random job titles
job = Faker.job()
println("Job Title: ", job)

# Generating random sentences
sentence = Faker.sentence()
println("Sentence: ", sentence)

# Generating random dates
date = Faker.date()
println("Date: ", date)

println(repeat('+', 62))

print_banner('+', 62, "Generating random arrays")

# Array of random integers
random_integers = [rand(-100:100) for _ in 1:5]
println("Random Integers: ", random_integers)

# Array of random floats
random_floats = [rand() * 100 for _ in 1:5]
println("Random Floats: ", random_floats)

# Array of random characters
random_chars = [rand(['a':'z'; 'A':'Z']) for _ in 1:5]
println("Random Characters: ", random_chars)

# Array of random strings
random_strings = [Faker.string(8) for _ in 1:5]
println("Random Strings: ", random_strings)

print_banner('+', 62, "Generating random Tuples")

# Tuple of random integers
random_tuple_integers = (rand(-100:100), rand(-100:100), rand(-100:100))
println("Random Tuple of Integers: ", random_tuple_integers)

# Tuple of random mixed types
random_tuple_mixed = (Faker.first_name(), rand(), rand(-100:100))
println("Random Tuple of Mixed Types: ", random_tuple_mixed)

print_banner('+', 62, "Generating random Sets")

# Set of random integers
random_set_integers = Set([rand(-100:100) for _ in 1:5])
println("Random Set of Integers: ", random_set_integers)

# Set of random floats
random_set_floats = Set([rand() * 100 for _ in 1:5])
println("Random Set of Floats: ", random_set_floats)

print_banner('+', 62, "Generating random dictionaries")

# Dictionary with random integer keys and string values
random_dict_int_str = Dict(rand(-100:100) => Faker.string(8) for _ in 1:5)
println("Random Dictionary (Int -> String): ", random_dict_int_str)

# Dictionary with random string keys and integer values
random_dict_str_int = Dict(Faker.string(8) => rand(-100:100) for _ in 1:5)
println("Random Dictionary (String -> Int): ", random_dict_str_int)

println(repeat('+', 62))

using Impostor
using Random

print_banner('+', 72, "Generating random arrays with Impostor")

# Array of random integers
random_integers = [rand(-100:100) for _ in 1:5]
println("Random Integers: ", random_integers)

# Array of random floats
random_floats = [rand() * 100 for _ in 1:5]
println("Random Floats: ", random_floats)

# Array of random characters (note: Impostor does not directly support random characters, using Random module)
random_chars = [rand('a':'z') for _ in 1:5]
println("Random Characters: ", random_chars)

# Array of random strings
random_strings = [string("Item", i) for i in 1:5]
println("Random Strings: ", random_strings)

print_banner('+', 72, "Generating random Tuples with Impostor")

# Tuple of random integers
random_tuple_integers = (rand(-100:100), rand(-100:100), rand(-100:100))
println("Random Tuple of Integers: ", random_tuple_integers)

# Tuple of random mixed types
random_tuple_mixed = (firstname(), rand(), rand(-100:100))
println("Random Tuple of Mixed Types: ", random_tuple_mixed)

print_banner('+', 72, "Generating random Sets with Impostor")

# Set of random integers
random_set_integers = Set([rand(-100:100) for _ in 1:5])
println("Random Set of Integers: ", random_set_integers)

# Set of random floats
random_set_floats = Set([rand() * 100 for _ in 1:5])
println("Random Set of Floats: ", random_set_floats)

print_banner('+', 72, "Generating random Dictionaries with Impostor")

# Dictionary with random integer keys and string values
random_dict_int_str = Dict(rand(-100:100) => string("Item", i) for i in 1:5)
println("Random Dictionary (Int -> String): ", random_dict_int_str)

# Dictionary with random string keys and integer values
random_dict_str_int = Dict(string("Item", i) => rand(-100:100) for i in 1:5)
println("Random Dictionary (String -> Int): ", random_dict_str_int)

println(repeat('+', 72))

using Impostor
using DataFrames

# Generating random first names
first_names = firstname(10)
println("First Names: ", first_names)

# Generating random last names
last_names = surname(10)
println("Last Names: ", last_names)

# Generating random cities
cities = city(10)
println("Cities: ", cities)

# Generating random phone numbers 
phone_numbers = [phone_number for _ in 1:10]
println("Phone Numbers: ", phone_numbers)

# Generating random company names
companies = [Faker.company() for _ in 1:10]
println("Companies: ", companies)

# Generating random job titles
job_titles = [Faker.job() for _ in 1:10 ]
println("Job Titles: ", job_titles)

# Generating random dates of birth
dob = [Faker.date() for _ in 1:10]
println("Dates of Birth: ", dob)

# Generating random addresses
addresses = [Faker.address() for _ in 1:10]
println("Addresses: ", addresses)

# Creating a DataFrame with random data
df = DataFrame(
    first_name = first_names,
    last_name = last_names,
    city = cities,
    phone_number = phone_numbers,
    company = companies,
    job_title = job_titles,
    date_of_birth = dob,
    address = addresses
);

print_banner('+', 62, "DataFrame with random data:")
df


