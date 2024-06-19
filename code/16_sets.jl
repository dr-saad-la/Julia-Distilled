# ---------------------------------------------------------- 
#    Chap 01: Sets in Julia
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

# Different ways to create sets
set1 = Set([1, 2, 3, 4, 5])                 # Creating a set with specific elements
set2 = Set{Int}()                           # Creating an empty set with specific element type
set3 = Set([1, 2, 2, 3, 4, 4, 5])           # Creating a set with duplicate elements
set4 = Set(["apple", "banana", "cherry"])   # Creating a set with strings
set5 = Set(1:5);                             # Creating a set from a range

print_banner('+', 60, "Sets in Julia")

# Displaying sets
println("set1: ", set1)
println("set2: ", set2)
println("set3: ", set3)
println("set4: ", set4)
println("set5: ", set5)

# Basic operations with sets
print_banner('+', 62, "Basic Operations with Sets")

# Adding elements
push!(set2, 1)
push!(set2, 2, 3, 4, 5)
println("  set2 after adding elements: ", set2)

# Removing elements
pop!(set2)
println("  set2 after removing an element: ", set2)

# Checking if an element exists
println("  Does set1 contain 3?: ", in(3, set1))
println("  Does set1 contain 6?: ", in(6, set1))

# Set operations
println("\nSet Operations:")
union_set = union(set1, set5)                # Union of sets
println("  Union of set1 and set5: ", union_set)

intersect_set = intersect(set1, set5)        # Intersection of sets
println("  Intersection of set1 and set5: ", intersect_set)

setdiff_set = setdiff(set1, set5)            # Difference of sets
println("  Difference of set1 and set5: ", setdiff_set)

# Iterating over elements in a set
println("  Iterating over set4: ")
for elem in set4
    println("    ", elem)
end

# Creating sets using comprehensions
print_banner('+', 62, "Sets with Comprehension")

set_comprehension1 = Set(i for i in 1:5)                      # Simple comprehension
set_comprehension2 = Set(i^2 for i in 1:5)                    # Squares of numbers from 1 to 5
set_comprehension3 = Set(i for i in 1:10 if i % 2 == 0)       # Even numbers from 1 to 10

# Displaying sets created using comprehensions
println("set_comprehension1: ", set_comprehension1)
println("set_comprehension2: ", set_comprehension2)
println("set_comprehension3: ", set_comprehension3)

println(repeat('+', 60))


