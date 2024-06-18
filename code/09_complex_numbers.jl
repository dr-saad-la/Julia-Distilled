# ---------------------------------------------------------- 
#    Chap 01: Complex Numbers in Julia
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

# Define complex number variables
complex1::Complex{Float64} = 1 + 2im          # Complex number with Float64 parts
complex2::Complex{Float64} = 3.5 - 4.2im      # Complex number with Float64 parts
complex3::Complex{Int64} = 2 + 3im;            # Complex number with Int64 parts

print_banner('+', 60, "Display information about Complex Numbers")

# Display information for each complex number variable
display_variable_info("complex1", complex1)
display_variable_info("complex2", complex2)
display_variable_info("complex3", complex3)

# Operations with complex numbers
print_banner('+', 60, "Operations with Complex Numbers")
# Addition
add_result = complex1 + complex2
println("  complex1 + complex2       : ", add_result)

# Subtraction
sub_result = complex1 - complex2
println("  complex1 - complex2       : ", sub_result)

# Multiplication
mul_result = complex1 * complex2
println("  complex1 * complex2       : ", mul_result)

# Division
div_result = complex1 / complex2
println("  complex1 / complex2       : ", div_result)

# Conjugate
conjugate_result = conj(complex1)
println("  Conjugate of complex1     : ", conjugate_result)

# Real and Imaginary parts
real_part = real(complex1)
imag_part = imag(complex1)
println("  Real part of complex1     : ", real_part)
println("  Imaginary part of complex1: ", imag_part)

# Magnitude and Phase
magnitude = abs(complex1)
phase = angle(complex1)
println("  Magnitude of complex1     : ", magnitude)
println("  Phase of complex1         : ", phase)

println(repeat('+', 60))


