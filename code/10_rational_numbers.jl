# ---------------------------------------------------------- 
#    Chap 01: Rational Numbers in Julia
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

# Define rational number variables
rational1::Rational{Int64} = 3//4         # Rational number with Int64 parts
rational2::Rational{Int64} = 7//8         # Rational number with Int64 parts
rational3::Rational{Int64} = 5//6;        # Rational number with Int64 parts

print_banner('+', 60, "Display information about Complex Numbers")

# Display information for each rational number variable
display_variable_info("rational1", rational1)
display_variable_info("rational2", rational2)
display_variable_info("rational3", rational3)

# Operations with rational numbers
print_banner('+', 60, "Basic Operations with Rational Numbers")


# Addition
add_result = rational1 + rational2
println("  rational1 + rational2    : ", add_result)

# Subtraction
sub_result = rational1 - rational2
println("  rational1 - rational2    : ", sub_result)

# Multiplication
mul_result = rational1 * rational2
println("  rational1 * rational2    : ", mul_result)

# Division
div_result = rational1 / rational2
println("  rational1 / rational2    : ", div_result)

# Convert to float
float_result = float(rational1)
println("  Convert rational1 to float: ", float_result)

# Numerator and Denominator
numerator_value = numerator(rational1)
denominator_value = denominator(rational1)
println("  Numerator of rational1   : ", numerator_value)
println("  Denominator of rational1 : ", denominator_value)

println(repeat('+', 60))


