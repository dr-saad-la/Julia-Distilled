# ---------------------------------------------------------- 
#    Chap 01: Booleans in Julia
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

# Define boolean variables
bool_true::Bool = true    # Boolean true
bool_false::Bool = false;  # Boolean false

print_banner('+', 60, "Display information of Boolean Variables")

# Display information for each boolean variable
display_variable_info("bool_true", bool_true)
display_variable_info("bool_false", bool_false)

# Boolean Operators
print_banner('+', 60, "Boolean Operators")

# AND operator
println("AND Operation (&&):")
println("  true && true   : ", bool_true && bool_true)
println("  true && false  : ", bool_true && bool_false)
println("  false && true  : ", bool_false && bool_true)
println("  false && false : ", bool_false && bool_false)

# OR operator
println("OR Operation (||):")
println("  true || true   : ", bool_true || bool_true)
println("  true || false  : ", bool_true || bool_false)
println("  false || true  : ", bool_false || bool_true)
println("  false || false : ", bool_false || bool_false)

# NOT operator
println("NOT Operation (!):")
println("  !true  : ", !bool_true)
println("  !false : ", !bool_false)

# Complex boolean operations
print_banner('+', 60, "Complex boolean operations");
A = true
B = false
C = true

complex_result1 = (A && B) && (A || C)
println("  (A && B) && (A || C) where A=true, B=false, C=true : ", complex_result1)

complex_result2 = (A || B) && (B || C)
println("  (A || B) && (B || C) where A=true, B=false, C=true : ", complex_result2)

complex_result3 = !(A && B) || (B && C)
println("  !(A && B) || (B && C) where A=true, B=false, C=true : ", complex_result3)

complex_result4 = (A && !B) || (C && !A)
println("  (A && !B) || (C && !A) where A=true, B=false, C=true : ", complex_result4)

println(repeat('+', 60))


