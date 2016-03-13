# Calculate the mode Pairing Challenge

# I worked on this challenge with: Carlos Gonzales

# I spent 5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array
# create new array
# create a new hash with number as key => frequency of number as its value
# 
# start counter and loop
# assign variable to first value in array [0]
# 
# iterate over array to compare if numbers in array match new variable
#   if they match, + 1 to value of key number
#       add key=>value pairs to hash
#   if key in hash = new key, do not add to hash <
# 
# compare hash values to find largest number
# add largest number to new array and return
# 
# What is the output? an array 
#What are the steps needed to solve the problem?


# 1. Initial Solution


def mode(array)
    new_array = []
    new_hash = {}
    
    
    array.each do |thing|
        counter = 0 
        array.each do |x| 
            if x == thing
                counter += 1 
                new_hash[x] = counter 
            end
        end
    end

    value_location = new_hash.keys[0]
    greatest_count = 0
    
    new_hash.each do |key, value|
        if value >= greatest_count  
            greatest_count = value
            value_location = key
        end
    end

    new_hash.each do |key, value|
        if greatest_count == value
            new_array << key
        end
    end
    new_array 
end



# 3. Refactored Solution

# Take an array 
# Find how many times each item is repeated 
# Find the max number
# Return the most repeated item in array form


def mode(array)

  hash = Hash[array.map {|x| [x, array.count(x)]}]
  new_array = []
  most_repeated_item = array.max_by{|x| array.count(x)}
  more_frequent =  array.count(most_repeated_item)

  hash.map{|k,v| new_array << k if v == more_frequent}
  new_array
end


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
We used an array to iterate over and capture the number of repetitions of each item.
Then we used a hash to capture the array as keys and their # of reps as values. Once 
we had captured the greatest value in the hash, we returned the associated key to a 
new array.


Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
Yes, this process was definitely easier.  We spent a lot of time thinking about the steps.


What issues/successes did you run into when translating your pseudocode to code?
Our pseudocode (preserved above) didn't include every step we needed, so we had to improvise a
little.  The last step of returning the key associated with the value was tricky, because we
thought there would be a way that wouldn't necessitate iteration.  


What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used .keys.  We tried to use .values, but couldn't make it work.  We also used .count and .map.


=end