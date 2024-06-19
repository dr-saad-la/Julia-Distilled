# ---------------------------------------------------------- 
#    Chap 01: Dict objects in Julia
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

# Different ways to create dictionaries
dict1 = Dict("a" => 1, "b" => 2, "c" => 3)             # Creating a dictionary with specific key-value pairs
dict2 = Dict{String, Int}()                            # Creating an empty dictionary with specific key and value types
dict3 = Dict(1 => "one", 2 => "two", 3 => "three")     # Creating a dictionary with integer keys and string values
dict4 = Dict(:name => "Alice", :age => 30)             # Creating a dictionary with symbol keys
dict5 = Dict("range1" => 1:5, "range2" => 6:10)        # Creating a dictionary with ranges as values

print_banner('+', 60, "Dicts in Julia")

# Displaying dictionaries
println("dict1: ", dict1)
println("dict2: ", dict2)
println("dict3: ", dict3)
println("dict4: ", dict4)
println("dict5: ", dict5)

# Basic operations with dictionaries
print_banner('+', 62, "Basic Operations with Dictionaries:")

# Accessing elements by key
println("  Element with key 'a' in dict1: ", dict1["a"])
println("  Element with key :name in dict4: ", dict4[:name])

# Adding elements
dict1["d"] = 4
println("  dict1 after adding element 'd': ", dict1)

# Modifying elements
dict1["b"] = 20
println("  dict1 after modifying element 'b': ", dict1)

# Removing elements
delete!(dict1, "c")
println("  dict1 after removing element 'c': ", dict1)

# Checking if a key exists
println("  Does key 'a' exist in dict1?: ", haskey(dict1, "a"))
println("  Does key 'c' exist in dict1?: ", haskey(dict1, "c"))

# Iterating over keys and values
println("  Iterating over dict3: ")
for (key, value) in dict3
    println("    ", key, " => ", value)
end

# Getting keys and values as separate arrays
keys_array = collect(keys(dict1))
values_array = collect(values(dict1))
println("  Keys of dict1: ", keys_array)
println("  Values of dict1: ", values_array)

# Creating dictionaries using comprehensions
println("\nDictionaries with Comprehension:")
dict_keys = ["a", "b", "c", "d"]
dict_values = [1, 2, 3, 4]
dict_comprehension = Dict(key => value for (key, value) in zip(dict_keys, dict_values))

# Displaying dictionaries created using comprehensions
println("dict_comprehension: ", dict_comprehension)

println(repeat('+', 60))


