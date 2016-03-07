# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below


  
def smallest_integer(list_of_nums)
  smallest_num = list_of_nums[0]
  counter = 0 
  while counter < list_of_nums.length
    if smallest_num > list_of_nums[counter]
      smallest_num = list_of_nums[counter]

    end
    counter += 1
  end
  smallest_num 
end




