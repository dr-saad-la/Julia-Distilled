# ---------------------------------------------------------- 
#    Chap 01: Char Variables in Julia
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

# Define character variables
char_a::Char = 'a';          # Lowercase character
char_A::Char = 'A';          # Uppercase character
char_1::Char = '1';          # Numeric character
char_special::Char = '@';    # Special character
char_unicode::Char = 'π';    # Unicode character

print_banner('+', 60, "Display information of Char Variables")


display_variable_info("char_a", char_a)
display_variable_info("char_A", char_A)
display_variable_info("char_1", char_1)
display_variable_info("char_special", char_special)
display_variable_info("char_unicode", char_unicode)

# Character operations
print_banner('+', 62, "Simple Character Operations")

# Checking character properties
println("  Is 'a' an alphabetic character?: ", isletter(char_a))
println("  Is '1' a digit?: ", isdigit(char_1))
println("  Is '@' a punctuation character?: ", ispunct(char_special))
println("  Uppercase of 'a': ", uppercase(char_a))
println("  Lowercase of 'A': ", lowercase(char_A))

print_banner('+', 62, "Comparing characters")

println("Character Comparisons:")
println("  'a' == 'A': ", char_a == char_A)
println("  'a' < 'A': ", char_a < char_A)
println("  'a' > 'A': ", char_a > char_A)


# Complex character expressions
println("Complex Character Expressions:")
complex_expr1 = uppercase(char_a) == char_A
println("  Uppercase('a') == 'A': ", complex_expr1)

complex_expr2 = isletter(char_a) && !isdigit(char_a)
println("  Is 'a' a letter and not a digit?: ", complex_expr2)

println(repeat('+', 60))


