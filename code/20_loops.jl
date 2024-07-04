# Control Flow in Julia: Loops

function main()
    println("*"^32)
    simple_for_loop()
    println("*"^32)

    println("*"^32)
    simple_while_loop()
    println("*"^32)

    println("*"^32)
    for_loop_with_break()
    println("*"^32)

    println("*"^32)
    for_loop_with_continue()
    println("*"^32)

    println("*"^32)
    nested_loops()
    println("*"^32)

    # Uncommenting this will cause an infinite loop (use Ctrl+C to stop it)
    # infinite_loop()
end

# Simple for loop
function simple_for_loop()
    for i in 1:5
        println("Iteration $i")
    end
end

# Simple while loop
function simple_while_loop()
    num = 5
    while num > 0
        println("Number: $num")
        num -= 1
    end
end

# For loop with break
function for_loop_with_break()
    for i in 1:10
        if i == 5
            println("Breaking at iteration $i")
            break
        end
        println("Iteration $i")
    end
end

# For loop with continue
function for_loop_with_continue()
    for i in 1:10
        if i % 2 == 0
            println("Skipping even number $i")
            continue
        end
        println("Odd number $i")
    end
end

# Nested loops
function nested_loops()
    for i in 1:3
        for j in 1:3
            println("i: $i, j: $j")
        end
    end
end

# Infinite loop (uncomment to run, use Ctrl+C to stop)
# function infinite_loop()
#     while true
#         println("This is an infinite loop.")
#     end
# end

# Run the main function
main()
