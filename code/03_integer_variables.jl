# Import the Base module to use the sizeof function
using Base

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

# Define integer variables of different types
int8_var::Int8 = 127                          # 8-bit signed integer
int16_var::Int16 = 32767                      # 16-bit signed integer
int32_var::Int32 = 2147483647                 # 32-bit signed integer
int64_var::Int64 = 9223372036854775807        # 64-bit signed integer

# Define unsigned integer variables of different types
uint8_var::UInt8 = 255                         # 8-bit unsigned integer
uint16_var::UInt16 = 65535                     # 16-bit unsigned integer
uint32_var::UInt32 = 4294967295                # 32-bit unsigned integer
uint64_var::UInt64 = 18446744073709551615;     # 64-bit unsigned integer

print_banner('+', 60, "Display information for each Intvariable")

display_variable_info("int8_var", int8_var)
display_variable_info("int16_var", int16_var)
display_variable_info("int32_var", int32_var)
display_variable_info("int64_var", int64_var)
display_variable_info("uint8_var", uint8_var)
display_variable_info("uint16_var", uint16_var)
display_variable_info("uint32_var", uint32_var)
display_variable_info("uint64_var", uint64_var)

println(repeat('+', 60))




