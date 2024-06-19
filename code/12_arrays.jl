# ---------------------------------------------------------- 
#    Chap 01: Arrays in Julia
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

# Different ways to create arrays
array1 = [1, 2, 3, 4, 5]                  # Creating an array with specific elements
array2 = Int[]                            # Creating an empty array of integers
array3 = fill(0, 5)                       # Creating an array filled with a specific value
array4 = zeros(5)                         # Creating an array of zeros
array5 = ones(5)                          # Creating an array of ones
array6 = collect(1:5)                     # Creating an array from a range
array7 = [i^2 for i in 1:5]               # Creating an array using comprehension
array8 = collect(10:-2:0)                 # Creating an array from a range with step -2
array9 = ['a', 'b', 'c', 'd', 'e']        # Creating an array of characters
array10 = ["apple", "banana", "cherry"]   # Creating an array of strings

print_banner('+', 60, "Ranges in Julia")

# Displaying arrays
println("array1: ", array1)
println("array2: ", array2)
println("array3: ", array3)
println("array4: ", array4)
println("array5: ", array5)
println("array6: ", array6)
println("array7: ", array7)
println("array8: ", array8)
println("array9: ", array9)
println("array10: ", array10)

print_banner('+', 60, "Basic operations with arrays")
# Accessing elements
println("  First element of array1: ", array1[1])
println("  Last element of array1 : ", array1[end])

# Modifying elements
array1[2] = 10
println("  Modified array1: ", array1)

# Array length
println("  Length of array1: ", length(array1))

# Adding elements
push!(array2, 1)
push!(array2, 2, 3, 4, 5)
println("  array2 after push!: ", array2)

# Removing elements
pop!(array2)
println("  array2 after pop!: ", array2)

# Concatenation
array11 = [1, 2, 3]
array12 = [4, 5, 6]
concatenated_array = vcat(array11, array12)
println("  Concatenated array: ", concatenated_array)

# Array comprehensions
array13 = [x * y for x in 1:3, y in 1:3]
println("  Array comprehension (multiplication table): ")
println(array13)

# Reshaping arrays
array14 = collect(1:6)
reshaped_array = reshape(array14, 2, 3)
println("  Reshaped array14 (2x3): ")
println(reshaped_array)

# Additional operations with arrays of characters and strings
println("\nOperations with Arrays of Characters and Strings:")

# Accessing elements in array9
println("  First character in array9: ", array9[1])
println("  Last character in array9 : ", array9[end])

# Accessing elements in array10
println("  First string in array10: ", array10[1])
println("  Last string in array10 : ", array10[end])

# Modifying elements in array9
array9[2] = 'z'
println("  Modified array9: ", array9)

# Modifying elements in array10
array10[2] = "blueberry"
println("  Modified array10: ", array10)

println(repeat('+', 60))

print_banner('+', 62, "Creating arrays using comprehensions");

comprehension1 = [i for i in 1:10]                       # Simple comprehension
comprehension2 = [i^2 for i in 1:10]                     # Squares of numbers from 1 to 10
comprehension3 = [i * j for i in 1:3, j in 1:3]          # Multiplication table
comprehension4 = [i for i in 1:20 if i % 2 == 0]         # Even numbers from 1 to 20
comprehension5 = [string("Item_", i) for i in 1:5]       # Creating an array of strings

# Displaying arrays created using comprehensions
println("comprehension1: ", comprehension1)
println("comprehension2: ", comprehension2)
println("comprehension3: ", comprehension3)
println("comprehension4: ", comprehension4)
println("comprehension5: ", comprehension5)

println(repeat('+', 62))


