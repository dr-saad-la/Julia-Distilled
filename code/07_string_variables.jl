# ---------------------------------------------------------- 
#    Chap 01: String Variables in Julia
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

# Define string variables
str_hello::String = "Hello, World!"                 # Simple string
str_multiline::String = """This is a
multiline string"""                                 # Multiline string
str_empty::String = ""                              # Empty string
str_special::String = "Special characters: @#\$%^&*" # String with special characters
str_unicode::String = "Unicode: π, θ, λ";            # String with Unicode characters

print_banner('+', 60, "Display information of Char Variables")

# Display information for each string variable
display_variable_info("str_hello", str_hello)
display_variable_info("str_multiline", str_multiline)
display_variable_info("str_empty", str_empty)
display_variable_info("str_special", str_special)
display_variable_info("str_unicode", str_unicode)

print_banner('+', 62, "Basic String operations")

# String concatenation
concat_str = str_hello * " " * str_special
println("  Concatenation: ", concat_str)

# String length
println("  Length of str_hello: ", length(str_hello))
println("  Length of str_empty: ", length(str_empty))

# String indexing and slicing
println("  First character of str_hello: ", str_hello[1])
println("  Slice of str_hello (1:5): ", str_hello[1:5])

# String comparison
println("String Comparisons:")
println("  'Hello' == 'hello': ", "Hello" == "hello")
println("  'Hello' != 'hello': ", "Hello" != "hello")
println("  'Hello' < 'hello': ", "Hello" < "hello")
println("  'Hello' > 'hello': ", "Hello" > "hello")

# Complex string expressions
println("Complex String Expressions:")
complex_expr1 = uppercase(str_hello) * " " * lowercase(str_special)
println("  Uppercase and lowercase concatenation: ", complex_expr1)

complex_expr2 = contains(str_hello, "World")
println("  Does str_hello contain 'World'?: ", complex_expr2)

println(repeat('+', 60))


