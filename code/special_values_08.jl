# ---------------------------------------------------------- 
#    Chap 01: Special Data Types in Julia
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

# Define special variables
const_pi = π                   # Pi constant
const_e = ℯ                   # Euler's number constant
nothing_var = nothing          # Nothing (represents the absence of a value)
env_var = ENV["PATH"];          # Environment variable (PATH)

print_banner('+', 60, "Display information of Special Variables")

# Display information for each special variable
display_variable_info("const_pi", const_pi)
display_variable_info("const_e", const_e)
display_variable_info("nothing_var", nothing_var)
# display_variable_info("env_var", env_var)

# Operations with special variables
println("Operations with Special Variables:")

# Using Pi constant in a calculation
circle_radius = 5
circle_circumference = 2 * const_pi * circle_radius
println("  Circumference of a circle with radius 5: ", circle_circumference)

# Checking if a variable is nothing
is_nothing = nothing_var === nothing
println("  Is nothing_var equal to nothing?: ", is_nothing)

# Using environment variable
# println("  PATH environment variable: ", env_var)

println(repeat('+', 60))

# Define variables of type Any
any_int::Any = 42                   # Integer value
any_float::Any = 3.14159            # Floating-point value
any_string::Any = "Hello, Julia!"   # String value
any_bool::Any = true                # Boolean value
any_nothing::Any = nothing          # Nothing value

print_banner('+', 60, "Variables of type Any")

# Display information for each variable of type Any
display_variable_info("any_int", any_int)
display_variable_info("any_float", any_float)
display_variable_info("any_string", any_string)
display_variable_info("any_bool", any_bool)
display_variable_info("any_nothing", any_nothing)

# Operations with variables of type Any
println("Operations with Variables of Type Any:")

# Perform type-specific operations
if typeof(any_int) == Int
    println("  any_int is an Integer: ", any_int + 1)
end

if typeof(any_float) == Float64
    println("  any_float is a Float64: ", any_float * 2)
end

if typeof(any_string) == String
    println("  any_string is a String: ", any_string * " How are you?")
end

if typeof(any_bool) == Bool
    println("  any_bool is a Boolean: ", !any_bool)
end

if typeof(any_nothing) == Nothing
    println("  any_nothing is Nothing: ", any_nothing === nothing)
end

println(repeat('+', 62))

# Define special floating-point values
positive_inf::Float64 = Inf            # Positive infinity
negative_inf::Float64 = -Inf           # Negative infinity
nan_value::Float64 = NaN               # Not a Number (NaN)
missing_value = missing;                # Missing value

print_banner('+', 62, "Other Special Values in Julia")

# Display information for each special value
display_variable_info("positive_inf", positive_inf)
display_variable_info("negative_inf", negative_inf)
display_variable_info("nan_value", nan_value)
display_variable_info("missing_value", missing_value)

# Operations with special values
println("Operations with Special Values:")

# Arithmetic with infinity
println("  positive_inf + 1       : ", positive_inf + 1)
println("  negative_inf - 1       : ", negative_inf - 1)
println("  positive_inf * 2       : ", positive_inf * 2)
println("  negative_inf / 2       : ", negative_inf / 2)

# Comparisons with infinity
println("  positive_inf > 1000    : ", positive_inf > 1000)
println("  negative_inf < -1000   : ", negative_inf < -1000)

# Arithmetic with NaN
println("  nan_value + 1          : ", nan_value + 1)
println("  nan_value * 2          : ", nan_value * 2)
println("  is NaN == NaN          : ", nan_value == NaN)

# Checking for NaN
println("  is NaN?: ", isnan(nan_value))

# Working with missing values
println("  missing_value is missing: ", missing_value === missing)

# Handling missing values in calculations
data = [1, 2, missing, 4]
sum_without_missing = sum(skipmissing(data))
println("  Sum of data without missing values: ", sum_without_missing)

println(repeat('+', 62));


