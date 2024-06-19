# ---------------------------------------------------------- 
#    Chap 01: Tuples in Julia
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

# Different ways to create tuples
tuple1 = (1, 2, 3, 4, 5)                  # Creating a tuple with specific elements
tuple2 = ()                               # Creating an empty tuple
tuple3 = (1, "apple", 3.14, true)         # Creating a tuple with mixed types
tuple4 = (1,)                             # Creating a single-element tuple
tuple5 = (1:3, 4:6)                       # Creating a tuple with ranges
tuple6 = (a=1, b="banana", c=2.71);       # Creating a named tuple

print_banner('+', 60, "Tuples in Julia")

# Displaying tuples
println("tuple1: ", tuple1)
println("tuple2: ", tuple2)
println("tuple3: ", tuple3)
println("tuple4: ", tuple4)
println("tuple5: ", tuple5)
println("tuple6: ", tuple6)

# Basic operations with tuples
println("\nBasic Operations with Tuples:")

# Accessing elements
println("  First element of tuple1: ", tuple1[1])
println("  Last element of tuple1 : ", tuple1[end])

# Accessing elements in mixed type tuple
println("  Second element of tuple3: ", tuple3[2])

# Length of the tuple
println("  Length of tuple1: ", length(tuple1))

# Iterating over elements in a tuple
println("  Iterating over tuple1: ")
for elem in tuple1
    println("    ", elem)
end

# Unpacking tuple elements
a, b, c, d, e = tuple1
println("  Unpacked elements of tuple1: ", a, ", ", b, ", ", c, ", ", d, ", ", e)

# Accessing elements in a named tuple
println("  Accessing named tuple element by name: ", tuple6.a)
println("  Accessing named tuple element by index: ", tuple6[2])

print_banner('+', 62, "Tuple Comprehensions are Generators")
# Tuple comprehensions

tuple_comprehension1 = (i for i in 1:5)                     # Simple comprehension
tuple_comprehension2 = (i^2 for i in 1:5)                   # Squares of numbers from 1 to 5
tuple_comprehension3 = (i * j for i in 1:3, j in 1:3)       # Multiplication table
tuple_comprehension4 = (i for i in 1:10 if i % 2 == 0)      # Even numbers from 1 to 10

# Displaying tuples created using comprehensions
println("tuple_comprehension1:\n", tuple_comprehension1)
println("tuple_comprehension2:\n", tuple_comprehension2)
println("tuple_comprehension3:\n", tuple_comprehension3)
println("tuple_comprehension4:\n", tuple_comprehension4)

println(repeat('+', 60))

print_banner('+', 62, "Creating Tuples using comprehensions with Collect");

# Collecting tuple comprehensions
collected_tuple_comprehension1 = collect((i for i in 1:5))                     # Simple comprehension
collected_tuple_comprehension2 = collect((i^2 for i in 1:5))                   # Squares of numbers from 1 to 5
collected_tuple_comprehension3 = collect((i * j for i in 1:3, j in 1:3))       # Multiplication table
collected_tuple_comprehension4 = collect((i for i in 1:10 if i % 2 == 0))      # Even numbers from 1 to 10

# Displaying collected tuples created using comprehensions
println("collected_tuple_comprehension1: ", collected_tuple_comprehension1)
println("collected_tuple_comprehension2: ", collected_tuple_comprehension2)
println("collected_tuple_comprehension3: ", collected_tuple_comprehension3)
println("collected_tuple_comprehension4: ", collected_tuple_comprehension4)

println(repeat('+', 62))


