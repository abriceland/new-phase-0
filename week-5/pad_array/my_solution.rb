# Pad an Array

# I worked on this challenge with Jason Milfred

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode


# What is the input? New array items, minimum size, and any associated value
# What is the output? A new array or modified version of the old array
# What are the steps needed to solve the problem?

# Create destructive method
# 1. Create an empty method that takes three arguments and set the value argument equal to nil
# 2. Determine a variable equal to the number of objects in the array
# 3. Create a loop that will add a number of nil values to the array equal to the remainder of the minimum size minus the array size
# 4. Push remainder number of values into end of original array
# 5. Return the array with padding

# Create non-destructive method
# 1. Create an empty method that takes three arguments and set the value argument equal to nil
# 2. Define a new variable in which to store the new array
# 3. Determine the array size (number of objects in the array)
# 4. Create a loop that will add a number of nil values to the array equal to the remainder of the minimum size minus the array size
# 5. Push remainder number of values into end of new array
# 6. Return the new array


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
 array_size = array.size
 until array_size >= min_size
   array << value
   array_size += 1
 end
 return array
end

def pad(array, min_size, value = nil) #non-destructive
 new_array = array.clone
 array_size = array.size
 until array_size >= min_size
   new_array << value
   array_size += 1
 end
 return new_array
end


puts pad!([1,2,3], 5, nil)
puts pad([1,2,3], 5, nil)

# 3. Refactored Solution

# unsuccessful

# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
No.  We tried a solution, but it didn't work, so we ended up trying solutions from our online research.  They also did not pass the tests.  So, we returned to our original idea and got it to work. 

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
No, because our solution didn't work and we had to start again.  We tried four different approaches before one passed all the tests. 

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?


When you refactored, did you find any existing methods in Ruby to clean up your code?
After trying so many times, we weren't successful with  a refactored solution.  We did see an example online of taking the values in the array and putting them into an equation inside the array using .count.

How readable is your solution? Did you and your pair choose descriptive variable names?
We tried to use descriptive variable names, but probably could have done better.

What is the difference between destructive and non-destructive methods in your own words?
Destructive methods change the item itself - an array, a list, a hash.  If asked to return the original item, it returns the altered item.  Non-destructive methods create a new version of the item, keeping the old version ready to be used again.  The latter is much safer.

=end