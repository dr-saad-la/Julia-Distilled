# Control Flow in Julia: if, else, if else Statements

function main()
    println("*"^32)
    simple_if_statement()

    if_with_parentheses()

    with_without_parens()

    println("*"^32)
    simple_else_statement()

    simple_if_else_statement()

    nested_if_statement()

    println("*"^32)
    ternary_operation()
    println("*"^32)

    # Uncommenting this will cause an error
    # non_bool_eval()
end

# Simple if statement
function simple_if_statement()
    number = 5
    if number > 0
        println("The number is positive.")
    end
end

# If with parentheses (generally unnecessary)
function if_with_parentheses()
    num = 7
    if (num > 0)
        println("$num is a positive number.")
    end
end

# With and without parentheses
function with_without_parens()
    number = 5

    # Both styles are valid
    if number > 0
        println("No parentheses needed.")
    end

    # This will work but may generate a warning
    if (number > 0)
        println("Parentheses are optional.")
    end
end

# Simple else statement
function simple_else_statement()
    number = -3
    if number > 0
        println("The number is positive.")
    else
        println("The number is not positive.")
    end
end

# Simple if else statement
function simple_if_else_statement()
    number = 0
    if number > 0
        println("The number is positive.")
    elseif number < 0
        println("The number is negative.")
    else
        println("The number is zero.")
    end
end

# Nested if statements
function nested_if_statement()
    number = 10
    if number > 0
        if number % 2 == 0
            println("The number is positive and even.")
        else
            println("The number is positive and odd.")
        end
    else
        println("The number is not positive.")
    end
end

# Ternary operation
function ternary_operation()
    number = 7
    result = number > 0 ? "positive" : "not positive"
    println("The number is $result.")
end

# Erroneous code, non-boolean evaluation
# Uncommenting and running this will cause an error
# function non_bool_eval()
#     num = 7
#     if num
#         println("$num is positive.")
#     end
# end

# Run the main function
main()
