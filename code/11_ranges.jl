# ---------------------------------------------------------- 
#    Chap 01: Ranges in Julia
#    Author: Dr. Saad Laouadi
# 
#.   Copyright to Dr Saad Laouadi
#   Using the examples from the notebook directly into 
#.  lecture is not allowed.
# -----------------------------------------------------------

# Code used for examples in this notebook
using Base
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

# Function to display the type and size of a variable
function display_variable_info(var_name::String, var_value)
    println("$var_name:")
    println("  Value       : $var_value")
    println("  Type        : $(typeof(var_value))")
    println("  Memory Size : $(sizeof(var_value)) bytes")
    println()
end;

# Define range variables
range1 = 1:10                       # Range from 1 to 10
range2 = 1:2:10                     # Range from 1 to 10 with step 2
range3 = 10:-1:1                    # Range from 10 to 1 with step -1

print_banner('+', 60, "Ranges in Julia")

# Display information for each range variable
display_variable_info("range1", range1)
display_variable_info("range2", range2)
display_variable_info("range3", range3)

# Operations with ranges
println("Operations with Ranges:")

# Length of the range
println("  Length of range1        : ", length(range1))
println("  Length of range2        : ", length(range2))
println("  Length of range3        : ", length(range3))

# Accessing elements in the range
println("  First element of range1 : ", first(range1))
println("  Last element of range1  : ", last(range1))
println("  Third element of range2 : ", range2[3])

# Converting range to array
array_from_range1 = collect(range1)
println("  Array from range1       : ", array_from_range1)

println(repeat('+', 60))

# more examples about ranges in Julia
print_banner('+', 60, "Extra Range Examples in Julia")

# Define range variables
range1 = 1:10                       # Range from 1 to 10
range2 = 1:2:10                     # Range from 1 to 10 with step 2
range3 = 10:-1:1                    # Range from 10 to 1 with step -1
range4 = 0:5:50                     # Range from 0 to 50 with step 5
range5 = -10:2:10                   # Range from -10 to 10 with step 2
range6 = 1.0:0.5:5.0                # Range from 1.0 to 5.0 with step 0.5
range7 = 5:-0.5:1.5                 # Range from 5 to 1.5 with step -0.5

# Print the ranges
println("range1: ", range1," => ", collect(range1))
println("range2: ", range2," => ", collect(range2))
println("range3: ", range3," => ", collect(range3))
println("range4: ", range4, " => ",collect(range4))
println("range5: ", range5, " => ",collect(range5))
println("range6: ", range6, " => ", collect(range6))
println("range7: ", range7, " => ", collect(range7))

println(repeat('+', 62))


