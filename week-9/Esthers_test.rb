########################################################################
# # WHILE LOOPS
	
# 	i = 0 
# 	array = [1,2,3]

# 	while i < array.length
# 		new_num = array[i]
# 		mult_num = new_num * 2
# 		array[i] = mult_num  # This replaces the item in the array rather than adding to it. 
# 		i += 1
# 	end

# 	p array

# 	i = 0 
# 	array = [1,2,3]
# 	new_array = []

# 	while i < array.length
# 		new_num = array[i]
# 		mult_num = new_num * 2 
# 		new_array << mult_num
# 		i += 1
# 	end

# 	p new_array

########################################################################

# # UNTIL LOOPS 
#opposite of while loop. Until the condition is false, do this.

# array = [4, 8, 12, 16]
# new_array = []

# until array.empty?
# 	item = array.Shift
# 	new_array << item
# end

# p new_array # will have same items 
# p array #will be empty 

########################################################################
# IF / ELSIF / ELSE STATEMENTS

# puts "enter a number"
# input = gets.chomp

# 	if  input.to_i > 20
# 		puts "Greater than 20"
# 	elsif input.to_i < 50
# 		puts "Less than 50"
# 	else
# 		puts "Neither!"

# 	end 

########################################################################
# TERNARY OPERATOR

# 3 parts - condition, second part that gets returned if condition is true, third part gets returned if a condition is false. great way to assign variables. good for if/else statement and can capture it. 

	# variable = 2 > 1 ? "true" : "false"

	# puts variable 

 # puts "enter a number"
 # input = gets.chomp
 # return_string = ""

	# input.to_i > 20 ? return_string = "greater than 20" : return_string = "smaller than 20"

	# puts return_string
 

 # puts "enter a number"
 # input = gets.chomp

	# enter_num = input.to_i > 20 ? "greater than 20" : "smaller than 20"

	# puts enter_num
########################################################################
# ITERATION VS RECURSION 
	# Calls itself in a method, has an end condition. Recursion is used when you have the same operation happening over and over to a different piece of data. 

	# Iteration happens over and over to a difference piece of data. Easier to make. 

#Example 1 : Factorial using iteration

# def iterative_factorial(number)
# 	product = 1
# 	i = 1
# 		while i <= number
# 			product = product * i
# 			i += 1
# 		end
# 			product
# end

# p iterative_factorial(3)

# #another way to do the same while loop

# def iterative_factorial_two(number)
# 	product = 1

# while number > 0 
# 	product = product * number
# 	number = number - 1
# end 
# 	product
# end

# p iterative_factorial_two(3)


# #Example 2: Factorial using recursion

# def recursive_factorial(number)
# 	if number == 1
# 		return 1 
# 	end 
# 	number * recursive_factorial(number - 1) 
# 		# this does NOT loop, it copies the method and keeps going below.
# end

# p recursive_factorial(4)

# 1) 4 * factorial of 3 (doesn't know what factorial of 3 is yet)
# 2) 3 * factorial of 2 
# 3) 2 * factorial of 1
# 4) 1 = doesn't call itself (returns 1) because we said if number == 1, return 1
# 5) Then it goes back up, since the other factorials have been defined. 2 * 1 
# 6) 3 * 2 (2 is the factorial of 2)
# 7) 4 * 6 (6 is the factorial of 3)
# 8) returns 4 * 6 = 24 which is the factorial of 4 
# --

# it doesn't know what the factorial is, so it waits until it is done with all of it and trickles back up.

	
#######################################################################
# RANGES

# Create an array generated using a range

# array = (1..10).to_a 

# p array


#######################################################################
# RAND
# p rand(50..100)

#######################################################################
# VARIABLE SCOPE

# # Local Variable 
# new_string = "I am a local string"

# #Global Variable - don't really use this
# $new_string = "I am a global string"

# #Instance Variable
# @name = name 

# #Class Variable - keeping track of how many instances of a class has been made. 
# @@class = class 


#######################################################################
# MENTAL MODEL
# Developing a picture inside your head to picture where things are and what needs to happen 


#######################################################################
# STACK 

# bunch_of_dishes = ["dish1", "dish2", "dish3"]

# #stack your dishes in a cabinet
# "dish3"
# "dish2"
# "dish1"

# Things are taken and put on the top of the stack 
# Ruby can put something into the "back" (back of array, top of stack)

# Create a class of dishes that shows how stacks work 

# class ShelfStack 
# 	attr_reader :shelf

# 	def initialize
# 		@shelf = []
# 	end

# 	def add_dish(dish)
# 		@shelf << dish 
# 	end

# 	def remove_dish
# 		@shelf.pop 
# 	end
# end

# second_shelf = ShelfStack.new

# p second_shelf.add_dish("Red Plate")
# p second_shelf.add_dish("Blue Plate")
# p second_shelf.add_dish("Green Plate")
# p second_shelf.add_dish("Yellow Plate")

# p second_shelf.remove_dish
# p second_shelf.remove_dish
# p second_shelf.remove_dish

# p second_shelf.shelf


#######################################################################
# KEYWORDS: 

# YIELD
	# Calls a block
	# Example in a method:

	# def yield_example(num)
	# 	if num > 2
	# 		yield(num)
	# 	else 
	# 		return "Hi"
	# 	end
	# end

	# yield_example(10) {|num| puts num}


# NEXT
	# Goes to the next loop in a method (not if/elsif/else)
	# Example in a method:

	# def next_example(array)

	# 	array.each do |num| 
	# 		next if num % 2 != 0
	# 		puts num 
	# 	end
	# end

	# next_example([1,2,3,4,5])


# # # RAISE
# # 	# Raises an error 
# # 	# Example in a method:

	# def raise_example(num)
	# 	if num > 2 
	# 		raise ArgumentError.new ("This is an argument error.")
	# 	else 
	# 		puts "You got no error, lucky you!"
	# 	end
	# end

	# raise_example(10)


#######################################################################
# P 
	# prints and returns that item 

# 	p 4
# 	# => 4
# 	# => 4 

# 	p "Hello World"
# 	# => "Hello World"
# 	# => "Hello World"

# # PRINT
# 	# print to screen without a new line, returns nil

# 	print 4
# 	# => 4
# 	# => nil 

# 	print "Hello World"
# 	# => Hello World nil 

# # PUTS
# 	# print to screen and add a new line and then returns nil
	
# 	puts 4
# 	# => 4
# 	# => nil 

# 	puts "Hello World"
	# => Hello World
	# => nil

# GETS
	# gets user input 

	# Example using a variable
	# user_input = gets
	# p user_input 
	# p user_input.chomp

	# # Example without a variable
	# puts "Press enter when you are done reading this"
	# gets
	# puts "Now we've gone onto the next thing"

#######################################################################
# TRUE & FALSE
	# if 2 + 2 == 4 
	# 	return true
	# else 
	# 	return false 
	# end 

#######################################################################
# NIL
	# an object that has a nil value 
	# 

# variable = nil 

# if variable == nil
# 	return nil
# else 
# 	puts "your variable has a value"
# end

# array = []

# array[2] = 1

# p array 

# return => [nil, nil, 1]

# Because the array was pushed a number at the location of 2, there have to be objects in locations 0 and 1

#######################################################################
# OPERATORS: 

# =
my_variable = 2
# => 2

# ==
2 + 2 == 4
#=> true 

# === 
# evaluates if thing on left contains thing on the right
(1..10) === 2 
# => true

# +
2 + 2
# => 4 

# +=
variable = 1
variable += 1
# => 2

# -
2 - 2 
# => 0

# %
20 % 2 == 0
# => true

# <
2 < 1
# => false

# <=
2 <= 2
# => true

# >
2 > 1
# => true

# >=
2 >= 2
#= > true

# !=
2 != 1
# => true

# =~
# Match. If thing on the left has something that matches the thing on the right
"This is a string" =~ /string/
# => 10 (returns index number of where the word "string" starts)

# !~
# Not a match.
"This is a string " !~ /string/
# => false 

# <=>
# Compares numbers only on the left and right of this operator. If number on left is bigger than number on right, returns 1, if number on left is smalelr than number on right, returns -1. If the numbers on each side are equal, returns 0. 
2 <=> 1
# => 1 

#######################################################################
# IMPORTANT ARRAY METHODS:
# (Fun Fact: An array is a hash, the key is the index location, and the value is the array object. Example: { 0 => 1, 1 => 2, 2 => 3, 3 => 4, 4 => 5, 6 => 12} )

# creating an array
array = []
# OR 
array = Array.new 

array = [1,2,3,4,5]

# accessing an item in an array
array[2]
# => 3

# updating an array
array[2] = 12
# => [1,2,12,4,5]

# adding items to an array
array.push(12)
# OR
array << 12 
# => [1,2,3,4,5,12]
 
# deleting items in an array
array.delete(12)
# OR
array.pop #pops off last item in the array and returns it but takes it out of an array
# OR
array.delete_at(5) #argument takes the index number it should be deleted 
# => [1,2,3,4,5]

# .compact
# removes nil elements 
[nil, nil, 1].compact
# => [1]

# .uniq
# returns only one item in the array if there are multiples
[1,1,2,3,4,5,5,6].uniq
# => [1,2,3,4,5,6]

# .sort
[2,5,6,3,1,4].sort
# => [1,2,3,4,5,6]

# .sort_by
[2,5,6,3,1,4].sort_by { |num| num.length }
# => [1,2,3,4,5,6]

# .select
# returns an array with items where the condition in the block is true
# selects items that the conditions specify in the block
[1,2,3,4,5,6].select {|num| num + 1 == 3}
# => [2]

[1,2,3,4,5,6].select {|num| num.even?}
# => [2,4,6]

# .reject
# returns an array with items where the condition in the block are false
# rejects items that the conditions specify in the block
[1,2,3,4,5,6].reject {|num| num + 1 == 3}
# => [1,3,4,5,6]

[1,2,3,4,5,6].reject {|num| num.even?}
# => [1,3,5]

# .find
# finds the first item that meets the condition in the block
[1,2,3,4].find {|num| num.even?}
# => 2 

# .index
# returns the index that is at a specific item 
[1,2,3].index(2)
# => 1  (because "2" in the array is at index location 1)

# .delete_at
# deletes item in array at a specific index number given in the argument
[1,2,3,4,5].delete_at(0)
# => [2,3,4,5]

# delete
# deletes item specified in argument in an array 
[1,2,3,4,5].delete(3)
# => [1,2,4,5]

# slice
# returns a slice of items from an array at a specific index number, or a range of index numbers. Do not use .slice with this, use brackets. 
array = [1,2,3,4,5,6]
array[0...2]
# => [1,2] (three dots- stops before index location 2)
# OR 
array[0..2]
# => [1,2,3] (two dots - goes up to AND includes location 2) 

# (Way to remember: LESS (dots) IS MORE (items))
 
# .flatten
# combines multiple arrays into one? 
[[1,2,3],[4,5,6]].flatten
# => [1,2,3,4,5,6]

# .include?
# checks to see if an array includes an item
[1,2,3,4,5].include?(5)
# => true 

# .insert(location, obj)
# inserts a specific item into an array at a specific index location
[1,2,3,4,5].insert(0, "a")
# => ["a", 1,2,3,4,5]

# .length
# returns the number of objects in an array
[1,2,3,4,5].length
# => 5

# .map
# does something to each item in an array
[1,2,3,4,5].map {|num| num + 1}
# => [2,3,4,5,6]

# .each
# does something with each item in an array
[1,2,3,4,5]....


# IMPORTANT HASH METHODS:

# creating

hash = Hash.new
hash = {}

# accessing

hash = {"Sylvia",=> "cat", "Paro" => "cat", "Audrey" => "cat"}

hash["Sylvia"]   # returns cat


# updating

hash["Sylvia"] = "old cat"  # hash = {"Sylvia" => "old cat", "Paro" => "cat", "Audrey" => "cat"}

# adding

hash["Claudius"] = "dead cat"  # hash = {"Sylvia" => "old cat", "Paro" => "cat", "Audrey" => "cat", "Claudius" => "dead cat"}

# deleting

hash.delete("Claudius")   # hash = {"Sylvia" => "old cat", "Paro" => "cat", "Audrey" => "cat"}

# each

hash.each {|name, corporal_form| puts "#{name} is a wonderful #{corporal_form}!"  
# "Sylvia is a wonderful old cat!"

# each_key

hash.each_key {|key| puts key}
# ["Sylvia" "Paro" "Audrey"]

# each_value

hash.each_value {|value| puts value}
# ["older cat" "cat" "cat"]

# empty?

hash.empty?
# false

# flatten (turns to array)

hash.flatten
# ["Sylvia", "old cat", "Paro", "cat", "Audrey", "cat"]

# has_key?

hash.has_key?("Audrey")
# true

# has_value?

hash.has_value?("puppy")
# false

# include?

hash.include?("Diana")
# false

# key

hash.key("cat")
# "Paro" "Audrey"

# length

hash.length
# 3

# merge

new_hash = {"Alex" => "dead cat", "Claudius" => "dead cat", "Diana" => "dead cat"}

hash.merge(new_hash)
# {"Sylvia" => "old cat", "Paro" => "cat", "Audrey" => "cat", "Alex" => "dead cat", "Claudius" => "dead cat", "Diana" => "dead cat"}

# reject   smme as hash.dup.delete_if

hash.reject {|key, value| value == "dead cat"}
# {"Sylvia" => "old cat", "Paro" => "cat", "Audrey" => "cat"} 

# select

hash = {"Sylvia" => "old cat", "Paro" => "cat", "Audrey" => "cat", "Alex" => "dead cat", "Claudius" => "dead cat", "Diana" => "dead cat"}

hash.select {|key, value| value == "old cat" || value == "cat"}
# {"Sylvia" => "old cat", "Paro" => "cat", "Audrey" => "cat"} 


# shift (returns array shift portion)

hash.shift
# ["Sylvia", "old cat"]

# to_a

hash = {"Sylvia" => "old cat", "Paro" => "cat", "Audrey" => "cat"} 

hash.to_a
# ["Sylvia", "old cat", "Paro", "cat", "Audrey", "cat"] 

# sort

hash.sort   # returns array of array in sorted order
# [["Audrey", "cat"], ["Paro", "cat"], ["Sylvia", "old cat"]] 

# sort_by

hash.sort_by {|key, value| key.length}
# [["Paro", "cat"], ["Sylvia", "old cat"], ["Audrey", "cat"]] 

# map

hash.map {|key, value| key, value = "wonderful #{value}"}
# ["wonderful old cat", "wonderful cat", "wonderful cat"] 

hash.dup.each {|key, value| hash[k] = value + "wonderful"}

#######################################################################
# IMPORTANT OBJECT METHODS:

# nil?
# empty?
# object_id
# dup
# class 
# superclass (highest level of classes, mostly created when creating a new class) 
# ancestors
# instance_of?
# is_a?(class),
# kind_of?(class) 
# respond_to?
# send
#to_s
#to_sym

#######################################################################
# IMPORTANT STRING METHODS:

# .length
# .split
# .slice
# .push
# .capitalize
# .upcase
# .downcase
# .chars
# .chomp
# .empty?
# .gsub
# .include?
# .index
# .reverse
# .slice
# .swapcase
# .to_f
# .to_i
# .to_sym

#######################################################################
# IMPORTANT FIXNUM METHODS:

# .even? 
# .odd?
# .next 
# .to_f
# .to_s

#######################################################################
# CLASSES

# initializing and calling instance objects

# instance vs class methods

# new
# method_missing
# <