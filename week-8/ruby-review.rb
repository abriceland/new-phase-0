# I worked on this challenge Chand Nirankari and Esther Leytush.
# This challenge took me .5 hours.


# Pseudocode
=begin 
# Pseudocode
    #INPUT: Array of numbers
    #OUTPUT: Array of numbers and strings that replaces a number multiple of 3 with "fizz" and 
    a number multiple of 5 as "buzz" and both 3 and 5 as "fizzbuzz", and returns other numbers 
    as is.
    #Steps: 
    # Create a method that takes in an array of numbers 
    # Create a new variable placeholder array for the output
    # Create a loop that picks up each number item in the array
        # Create a new variable that is an empty string placeholder ("")
        # Push "fizz" IF # in array % 3 == 0
        # Push "buzz" IF # in array % 5 == 0
        # empty string placeholder = number if placeholder is empty
        # Push item into placeholder array
        # Loop ends
    # Return placeholder array 
=end


# Initial Solution

# def super_fizzbuzz(array)
#     new_array = []
    
#     array.each do |number|
#         string_holder = ""
        
#         string_holder << "Fizz" if number % 3 == 0
#         string_holder << "Buzz" if number % 5 == 0
#         string_holder = number if string_holder.empty?
#         new_array << string_holder
#     end
#     new_array
# end

# p super_fizzbuzz([8, 4, 55, 666, 3,44, 2, 12, 87, 30, 300])

# # Refactored Solution


# def super_fizzbuzz(array)
#     fizz_buzz_array = []
    
#     array.each do |number|
#         placeholder = ""
        
#         placeholder << "Fizz" if number % 3 == 0
#         placeholder << "Buzz" if number % 5 == 0
#         placeholder = number if string_holder.empty?
#         fizz_buzz_array << placeholder
#     end
#     new_array
# end

# p super_fizzbuzz([8, 4, 55, 666, 3,44, 2, 12, 87, 30, 300])

=begin
# Reflection

What concepts did you review or learn in this challenge?
The importance of descriptive variable names and reinforcing logical thinking


What is still confusing to you about Ruby?
How to break down a problem still takes some time to understand, if the concepts are new.


What are you going to study to get more prepared for Phase 1?
Do more practice problems, practice the most often-used methods and expand my knowledge 
in general


=end
