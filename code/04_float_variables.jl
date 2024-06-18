# ---------------------------------------------------------- 
#    Chap 01: Float numbers in Julia
#    Author: Dr. Saad Laouadi
# 
#.   Copyright to Dr Saad Laouadi
#   Using the examples from the notebook directly into 
#.  lecture is not allowed.
# -----------------------------------------------------------

# Import the Base module to use the sizeof function
using Base

# Import the Printf module to use the @sprintf macro
using Printf

# A function to print a nice banner on the stdouot
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

# Define floating-point variables of different types
float16_var::Float16 = Float16(3.14159)                             # 16-bit floating-point
float32_var::Float32 = 3.141592653589793f0                          # 32-bit floating-point
float64_var::Float64 = 3.1415926535897932384626433832795028841971;  # 64-bit floating-point (default)

# Define floating-point variables using scientific notation
sci_float32_var::Float32 = 1.23e4             # 32-bit floating-point in scientific notation
sci_float64_var::Float64 = 1.23e-4;            # 64-bit floating-point in scientific notation

print_banner('+', 60, "Display information for each Intvariable")

display_variable_info("float16_var", float16_var)
display_variable_info("float32_var", float32_var)
display_variable_info("float64_var", float64_var)
display_variable_info("sci_float32_var", sci_float32_var)
display_variable_info("sci_float64_var", sci_float64_var)

# Formatting floating-point numbers
formatted_float64 = @sprintf("%.5f", float64_var)         # Format to 5 decimal places
formatted_sci_float64 = @sprintf("%.2e", sci_float64_var)  # Format to scientific notation with 2 decimal places

print_banner('+', 60, "Formatting with Scientific notation")
println("Formatted float64_var to 5 decimal places: $formatted_float64")
println("Formatted sci_float64_var to scientific notation with 2 decimal places: $formatted_sci_float64")

println(repeat('+', 60))

# Define well-known scientific numbers as floating-point variables
pi::Float64 = 3.1415926535897932384626433832795028841971    # Pi
e::Float64 = 2.7182818284590452353602874713526624977572470  # Euler's number
golden_ratio::Float64 = 1.6180339887498948482045868343656381177203092  # Golden Ratio
planck_constant::Float64 = 6.62607015e-34   # Planck's constant (in Joule-seconds)
light_speed::Float64 = 2.99792458e8         # Speed of light (in meters/second)

print_banner('+', 60, "Famous Scientific Number");

display_variable_info("pi", pi)
display_variable_info("e", e)
display_variable_info("golden_ratio", golden_ratio)
display_variable_info("planck_constant", planck_constant)
display_variable_info("light_speed", light_speed)

println(repeat('+', 62));
