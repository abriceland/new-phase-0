# I worked on this challenge with Chand Nirankari
# This challenge took me .5 hours.

# For this challenge, you will write a method to check if a number is part of that sequence.

# Pseudocode
  # Create a method that takes a number as its argument
  # Make an array to start the fibonacci sequence with the first two numbers to give it index locations
  # Create a counter
  # Using a while loop, use index locations to add the previous and next number together to equal the sum
  # Push the sum into the fibonacci sequence array 
  # Increase the counter with the previous number (NOT 1)
  # After the loop, use if/else statements to check if the number given is included (include?) into the fibonacci sequence array, using true/false as returns.


# Initial Solution

def is_fibonacci?(num)
  fibonacci_sequence = [0, 1] 
  i = 1
  while i <= num #1 is less than monster num
    previous_num = fibonacci_sequence[-2] 
    next_num = fibonacci_sequence[-1] 
    sum = previous_num + next_num
    fibonacci_sequence << sum
    i = i + previous_num
  end
  p fibonacci_sequence
  if fibonacci_sequence.include?(num) 
    p true
  else
    p false
  end 
end

is_fibonacci?(8670007398507948658051921)

# Refactored Solution

def is_fibonacci?(num)
  fibonacci_sequence = [0, 1] 
  i = 1
  while i <= num 
    i = i + fibonacci_sequence[-2]
    fibonacci_sequence << fibonacci_sequence[-2] + fibonacci_sequence[-1]
  end
  fibonacci_sequence.include?(num) ? true : false
end


# Reflection

# What concepts did you review or learn in this challenge?

# Using minus indexes, incrementing counter by something other than 1 and include?


# What is still confusing to you about Ruby?

# Some of the logic is still complicated and difficult to understand, but overall
# it is getting easier.


# What are you going to study to get more prepared for Phase 1?

# More Ruby!


