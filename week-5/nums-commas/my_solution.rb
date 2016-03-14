=begin
# Numbers to Commas Solo Challenge

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# Write a method separate_comma which takes a positive integer as its input 
# and returns a comma-separated integer as a string.

# 0. Pseudocode

# What is the input? a positive integer
# What is the output? a string
# What are the steps needed to solve the problem?
1) Reverse the integer, so commas will be in correct place in final output
2) Create an empty array
3) Change to string and split string into the array by separate characters 
4) Create groups of 3 inside the array (sub-arrays)
=> [["a","b","c"],["a","b",c"],["a","b","c"]]
5) Join string characters inside sub-arrays 
=>["abc","abc","abc"]
6) Convert array to single string with commas in between each 3 characters (where the sub-arrays were split)
=> "abc,abc,abc"
7) Reverse again to original order
=end


# 1. Initial Solution

def separate_comma(number)
    number = number.to_s.reverse
    
    new_array = number.split("")
    num_array = []

    new_array.each_slice(3) do |group|
        num_array << group
    end

    joined_num_array = num_array.map {|group| group.join}
    
    number = joined_num_array.join(",").reverse
    number
end

separate_comma(1234093)

# 2. Refactored Solution

# None


# 3. Reflection