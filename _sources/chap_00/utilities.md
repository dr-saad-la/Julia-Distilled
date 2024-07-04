# Utilities

In this section, we define some utility functions that will be used throughout the book.

## Print Banner

When teaching and illustrating a concept in a programming language, I prefer have a nicely formatted output, therefore, I wrote a function `print_banner`, which is designed to print a nicely formatted banner to the standard output. This banner can be used to highlight sections, titles, or messages in the output, making it more visually appealing and easier to read.

```julia
# Import the Base module to use the sizeof function
using Base

# A function to print a nice banner on the stdout
function print_banner(char::Char, num_chars::Int, message::String)
    border = repeat(string(char), num_chars)
    
    total_padding = num_chars - length(message)
    left_padding = total_padding ÷ 2
    right_padding = total_padding - left_padding
    
    centered_message = repeat(" ", left_padding) * message * repeat(" ", right_padding)
    
    println(border)
    println(centered_message)
    println(border)
end
```

Here is an example on how to use this function:

```julia
print_banner('*', 52, "Welcome to Julia Programming Distilled")
```

Here is how the output will look like:

```text
****************************************************
        Welcome to Julia Programming Distilled                  
****************************************************
```

## Display Variable Info

Since it is essential to understand how variables work internally, although that not be the case for everyone. I wanted to good deep into the language from the very beginning of the book, hence the term **distilled**; thus, I designed another function `display_var_info` to display detailed information about a variable. This includes the variable's name, value, type, and memory size. This function is particularly useful for debugging and educational purposes, where understanding the characteristics of a variable is crucial.

```julia
# Function to display the type and size of a variable
function display_var_info(var_name::String, var_value)
    println("$var_name:")
    println("  Value       : $var_value")
    println("  Type        : $(typeof(var_value))")
    println("  Memory Size : $(sizeof(var_value)) bytes")
    println()
end
```

Here is an example how to use this function

```julia
# Define a variable
x = 42

# Display information about the variable
display_variable_info("x", x)
```

Here is the output

```text
x:
  Value       : 42
  Type        : Int64
  Memory Size : 8 bytes
```


**To do**

As we continue writing this book, additional utility functions might be introduced and documented in this section. 
