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

# Different ways to create named tuples
named_tuple1 = (a=1, b=2, c=3)               # Creating a named tuple with specific elements
named_tuple2 = (name="Alice", age=30)        # Creating a named tuple with mixed types
named_tuple3 = (x=1, y="apple", z=3.14)      # Creating a named tuple with mixed types
named_tuple4 = (d=1.0, e="banana", f=true)   # Creating a named tuple with mixed types
named_tuple5 = (g=1:5, h=6:10);               # Creating a named tuple with ranges

print_banner('+', 60, "Tuples in Julia")

# Displaying named tuples
println("named_tuple1: ", named_tuple1)
println("named_tuple2: ", named_tuple2)
println("named_tuple3: ", named_tuple3)
println("named_tuple4: ", named_tuple4)
println("named_tuple5: ", named_tuple5)

# Basic operations with named tuples
print_banner('+', 62, "Basic Operations with Named Tuples:")

# Accessing elements by name
println("  Element 'a' of named_tuple1: ", named_tuple1.a)
println("  Element 'name' of named_tuple2: ", named_tuple2.name)

# Accessing elements by index
println("  First element of named_tuple3: ", named_tuple3[1])
println("  Second element of named_tuple3: ", named_tuple3[2])

# Length of the named tuple
println("  Length of named_tuple1: ", length(named_tuple1))

# Iterating over elements in a named tuple
println("  Iterating over named_tuple1: ")
for (key, value) in pairs(named_tuple1)
    println("    ", key, " => ", value)
end

# Unpacking named tuple elements
a, b, c = named_tuple1
println("  Unpacked elements of named_tuple1: ", a, ", ", b, ", ", c)

# Creating named tuples using comprehensions
println("\nNamed Tuple Comprehensions:")
keys = [:a, :b, :c, :d, :e]
values = [1, 2, 3, 4, 5]
named_tuple_comprehension = (; (key => value for (key, value) in zip(keys, values))...)

# Displaying named tuples created using comprehensions
println("named_tuple_comprehension: ", named_tuple_comprehension)

println(repeat('+', 60))
