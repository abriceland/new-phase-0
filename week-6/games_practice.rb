# // add commas into a number to look like a standard number
=begin
create new variable with the number reversed
turn into array
iterate through string to divide number into groups of three
insert commas into array
join together with commas in place
return as number

=end

# def comma_inserter(number)
#     number = number.to_s.reverse
    
#     new_number = number.split("").each_slice(3).to_a

#     new_number.map!{|group| group.join}.join(",").reverse
    
# end

# p comma_inserter(9887654321)


# def comma_inserter(number)
#     new_num = number.to_s.reverse
    
#     array = new_num.split("").each_slice(3).to_a
    
#     array.map!{|group| group.join}.join(",").reverse
        
# end

# p comma_inserter(5298347239857)

# // iterate through array and choose smallest number

# def smallest_number(array)
#     sm_number = array[0]
    
#     i = 0
#     while i < array.length
#         current_num = array[i]
#         if sm_number > current_num
#             sm_number = current_num
            
#         end
#     i +=1    
#     end
#     sm_number
# end    

# p smallest_number([9, 5, 40, 3, 7, 26])

# # def find_number(array, num)
# #     current_num = 0
    
# #     i = 0
# #     while i < array.length
# #         current_num = array[i]
# #         if num = current_num
# #             return current_num[i]
# #         else
# #             return nil
# #         end    
# #     end
# #     p current_num[i]
# # end    



# # array = [1, 2, 3, 4, 5, 6, 7, 8]
# # num = 7


# =begin
# # FizzBuzz

# - given a number, loop through all the numbers from 1 to that number
# - if the current number is evenly divisible by 3, print out "Fizz" 
# - if the current number is evenly divisible by 5, print out "Buzz"
# - if the current number is divisible by BOTH 3 and 5, print out "FizzBuzz"
# - if the current number is not divisible by either 3 or 5, print out the number
# => given 15: "1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz"

# =end


# # def fizzbuzz(max)                   #define method that takes integer as argument
# #     array = (1..max).to_a           # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
    
# #     array.each do |number|          #start iteration over array picking up each number
# #         current_num = ""            #""
        
# #         if number % 3 == 0          #true
# #             current_num << "Fizz"   #"Fizz"
# #         end    
    
# #         if number % 5 == 0          #true
# #             current_num << "Buzz"   #"FizzBuzz"
# #         end
        
# #         if current_num.empty?       #false
# #             current_num << number.to_s  #no return
# #         end    
# #         puts current_num            #FizzBuzz

# #     end
# # end

# # max = 30
# # fizzbuzz(max)





# def fizzbuzz(max)
#     array = (1..max).to_a
    
#     array.each do |number|
#         current_num = ""
        
#         if number % 3 == 0
#             current_num << "Fizz"
#         end
        
#         if number % 5 == 0
#             current_num << "Buzz"}
#         end
        
#         if current_num.empty?
#             current_num << number.to_s
#         end
#         puts current_num
#     end
# end

# max = 45
# fizzbuzz(max)



# // adding up items in an array

# def adding_up(array)
#     sum = 0
    
#     i = 0
#     while i < array.length
#         current_num = array[i]
#         sum = sum + current_num
#         i += 1
#     end
#     sum
# end    

# p adding_up([1, 2, 3, 4])




# // // write a method that returns the factorial of a given number

# define method with argument of number
# set variable 
# set counter 
# while counter is less than number


# def factorial(number)
#     factor = 1
    
#     i = 1
#     while i <= number
#         factor = i * factor
#         i += 1
#     end
#     factor
# end    

# p factorial(3)



# // // method that takes an array of words ["grasping", "turning", "running", "fighting"]
# // // and selects a word that contains "turn"


# def chomping(array)

#     turning = array[1].split

# end

# def chomping(array)
    
#     array.each do |word|
#         if word.include?("turn")
#             return "The word, #{word}, is here."
#         end
#     end
#     return "The word is not in this array."
# end


# def turn(array, word_to_find)
    
#     i = 0
#     while i <= array.length
#         current_word = array[i]
#         if current_word.include?(word_to_find)
#             return "Look!  The word, #{current_word}, is here!!!!"
#         end    
#         i += 1       
#     end
#     return "The word isn't here.  Better luck next time."
# end


# p turn(["grasping", "turning", "running", "fighting"], "run")


# take array of words, return the third greatest number in the array
# (two versions: one with sort, one without)

# without sort

# def third_greatest(array)
#     first = 0
#     second = 0
#     third = 0

#     while third == 0
#         array.each do |number|
#             if number > first
#                 first = number
#             elsif number > second
#                 second = number
#             elsif number > third
#                 third = number
#             end
#         end 
#     end
#     third
# end

# p third_greatest([5, 9, 3, 10, 22, 54])

# with sort

# def third_greatest(array)

#     new_array = array.sort.reverse
#     new_array[2]
# end


# p third_greatest([4, 90, 8, 22, 5])

# pseudocode for bubble sort in an array of numbers

# initiate loop
# while the counter is less that the length of array
# compare first item with second item
# if value of first number is less than second number
# leave in same place
# if value of second number is less than first number
# move second number to position of first number and first to second position
# loop back to continue to next pair of numbers 


# def sort(array)
#     sorted = false
    
#     while sorted = false
#         a = array[i]
#         b = array[i + 1]
#         if 
#             sorted = false
#             num2 = array
                
#     end        
            
            
#         end
#     end        
# end            
    
    
    
    
# // take sentence, split into array, iterate through and choose smallest word
# define method taking a string as an argument
# split string and puts into array
# iterate over array and compare length 
# capture smallest length using variable


# def smallest(string)
# 	new_string = string.split(" ")
# 	shortest_string = new_string[0]
	
# 	new_string.each do |word|
# 		if word.length < shortest_string.length
# 			shortest_string = word
# 		end
# 	end
# 	shortest_string
# end     
     
# p smallest("When will I get Ruby and JavaScript?")




# // take array of numbers, return the third greatest number in the array 
# // (two versions: one with sort, one without)

# sort array from high to low
# pick third number from array

# def third(array)                   # using array method
# 	sorted_array = array.sort! {|x, y| y<=>x}
# 	third_greatest = sorted_array[2]
# end	 
	 

# p third([4, 99, 75, 62, 51, 89, 111])

def third(array)					  # using while loop
	greatest = 0
	
	
	
	
end	


# // method that takes an array of numbers, and returns a new array with all the 
# numbers doubled

# Pseudocode
# input: array of numbers
# output: different array of numbers
# steps:
# 1. define method taking array as argument
# 2. create new empty array
# 3. iterate over original array, multiplying each number by 2 
# 4. within loop, push into new array
# 5. outside of loop, return array

# def doubler(array)
# 	doubled_array = []
	
# 	array.each do |num|
# 		doubled = num * 2
# 		doubled_array << doubled
# 	end
# 	doubled_array
# end	

# p doubler([3, 7, 5, 99, 81, 67, 48, 33])



# // write method that prints out factors for each number from 1 to a given max. 






# // Write a function oddball_sum(numbers), which takes in an array of 
# // integers and returns the sum of all the odd elements.