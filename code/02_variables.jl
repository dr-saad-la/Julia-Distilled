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

print_banner('+', 60, "Valid Variable Names in Julia");
x = 10
y1 = 3.14
_myVariable = "Hello, World!"
data123 = [1, 2, 3, 4, 5]
αβγ = "Unicode characters are allowed"
π = 3.14159

println("x =             $x")
println("y1 =            $y1")
println("_myVariable =   $_myVariable")
println("data123 =       $data123")
println("αβγ =           $αβγ")
println("π =             $π")
println(repeat('+', 60))

print_banner('+', 60, "Invalid Variable Names");

# Uncommenting these will cause errors"
# 1x = 10           # Cannot start with a digit
# my-variable = 20  # Hyphens are not allowed
# data! = 30        # Exclamation mark is not allowed
# for = 40          # Reserved keyword

println("# 1x = 10           # Cannot start with a digit")
println("# my-variable = 20  # Hyphens are not allowed")
println("# data! = 30        # Exclamation mark is not allowed")
println("# for = 40          # Reserved keyword")
println(repeat('+', 60))


