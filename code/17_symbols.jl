# ---------------------------------------------------------- 
#    Chap 01: Symbolsin Julia
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

# Different ways to create symbols
symbol1 = :a                                # Creating a symbol with a single character
symbol2 = Symbol("b")                       # Creating a symbol from a string
symbol3 = Symbol("my_symbol")               # Creating a symbol with multiple characters
symbol4 = Symbol()                          # Creating an empty symbol (uncommon)
symbol5 = Symbol(:c);                       # Converting an existing symbol to a symbol (redundant but possible)

print_banner('+', 60, "Symbols in Julia")

# Displaying symbols
println("symbol1: ", symbol1)
println("symbol2: ", symbol2)
println("symbol3: ", symbol3)
println("symbol4: ", symbol4)
println("symbol5: ", symbol5)

# Basic operations with symbols
print_banner('+', 62, "Basic Operations with Symbols")

# Checking if two symbols are the same
println("  Is symbol1 equal to symbol2?: ", symbol1 == symbol2)
println("  Is symbol1 equal to symbol1?: ", symbol1 == symbol1)

# Converting symbol to string
symbol1_str = string(symbol1)
println("  Converting symbol1 to string: ", symbol1_str)

# Checking the type of a symbol
println("  Type of symbol3: ", typeof(symbol3))

# Creating symbols using expressions
print_banner('+', 62, "Creating Symbols Using Expressions")

expr = :(:x + :y)                     # Creating an expression with symbols
println("  Expression with symbols: ", expr)
println("  Type of the expression: ", typeof(expr))

# Using symbols in dictionaries (common use case)
print_banner('+', 62, "Using Symbols in Dictionaries")

symbol_dict = Dict(:name => "Julia", :version => "1.8", :type => "programming language")
println("  Dictionary with symbols as keys:\n\t", symbol_dict)
println("  Accessing value with key :name:\n\t", symbol_dict[:name])

# Iterating over dictionary with symbols as keys
println("  Iterating over dictionary with symbols as keys: ")
for (key, value) in symbol_dict
    println("    ", key, " => ", value)
end

# Creating symbols using comprehensions
print_banner('+', 62, "Symbols with Comprehension")
symbols_comprehension = [Symbol("symbol_$i") for i in 1:5]

# Displaying symbols created using comprehensions
println("symbols_comprehension: ", symbols_comprehension)

println(repeat('+', 60))


