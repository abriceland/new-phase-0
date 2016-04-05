# Dev Bootcamp

# while loops 


# until loops

    # array = [4, 8, 12, 16]
    # new_array = []
    
    # until array.empty?
    #     item = array.shift 
    #     new_array << item
    # end
    # p new_array
    # p array


# if/elsif/else statements




# ternary operator - useful for if/else statement

# test-expression ? if-true-expression : if-false-expression


# best_num = 100 > 101 ? "true" : "false"
# p best_num


# iteration vs recursion 

# Iteration picks up each item in an object and does something to it

# given a number as argument
# set counter
# initiate loop
# while counter 


# def iterative_factorial(number)
#     placeholder = 1
#     i = 1
#     while i <= number
#         placeholder = placeholder * i
#         i += 1
#     end
#     placeholder
# end

# p iterative_factorial(9)
    
# def iterative_factorial2(number)    
#     factorial = 1

#     while number > 0
#         factorial = factorial * number
#         number = number - 1
#     end
#     factorial
# end   
# p iterative_factorial2(4)        

# Recursion calls itself and has an end condition (which comes first) 
# Good when you are doing something to a subset

# def recursive_factorial(number)
#     # end condition
#     if number == 1
#         return 1
#     end    

#     # call method itself
#     number * recursive_factorial(number - 1)

# end

# p recursive_factorial(4)

# 4 * 3! 24
# 3 * 2! 6
# 2 * 1! 2
# 1


# ranges 

# array = (1..5).to_a

# p array

# rand

# random_num = rand(100)

# p random_num

# variable scope

# variable   -  local
# @variable  -  instance
# @@variable  =  class
# $variable  -  global


# mental model




# stack  =  created a class shat shows how stacks work

# class Shelfstack
#     attr_reader :shelf
    
#     def initialize
#         @shelf = []
#     end    
    
#     def add_dish(dish)
#         @shelf << dish
#     end
    
#     def remove_dish
#         @shelf.pop
#     end    

# end        

# new_shelf = Shelfstack.new

# p new_shelf.add_dish("best china plate")
# p new_shelf.add_dish("cracked multicolored plate")
# p new_shelf.add_dish("knock-off china")

# p new_shelf.remove_dish
# p new_shelf.remove_dish
# p new_shelf.shelf

# keywords: yield, next, raise

# yield calls a block
# next goes to next loop in method
# raise brings up an error

# def cat_toy(toy)
#     if toy == "wiretoy"
#         yield(toy)
#     else 
#         puts "Wrong toy!"
#     end
# end    


# def assert 
#     if yield
#         puts "You got it right!"
#     else 
#         puts "Sorry, Charlie.  Try again."
#     end    
# end

# assert {2 == 3}



# def cat_call(cats_array)
    
#     cats_array.each do |cat|
#         if cat == "Sylvia"
#             next
#         else
#             puts "#{cat}, stop it now!"
#         end    
#     end 
    
#     cats_array.each do |cat|
#         if cat == "Sylvia" || cat == "Paro"
#             puts "#{cat}, I love you!"
#         end  
#     end
#     cats_array
# end    

# p cat_call(["Sylvia", "Paro", "Audrey"])


# def cat(cat_array)
#     if cat_array[0] != "Audrey"
#         raise ArgumentError.new("Wrong cat!")
#     else
#         "No problem"
#     end
# end    

# p cat(["Sylvia", "Paro", "Audrey"])


# p, print, puts, gets

# p = 4 (and returns it, too)
# print = 4 (returns nil)
# puts = 4 and goes to next line (returns nil)

# gets = receives input from user



# true, false

# if number == 2
#     return true
# else
#     return false
# end    


# nil - incredibly important and ubiquitous 

# if value == nil
#     puts "There is nothing here."
# end


# operators: =, ==, ===, +, +=, -, %, <, <=, >, >=, !=, =~, !~, <=>

# number = 8    
# # return 8

# 2 == 2        
# # return true

# (1..10) === 2   # evaluates if thing on left contains thing on right 
# # return true

# 4 + 2 
# # 6

# number += 3
# # 11

# 7 - 2
# # 5

# 8 % 2
# # 0

# 5 < 10
# # true

# 8 <= 10
# # true

# 9 > 3
# # true

# 8 >= 7
# # true

# 4 != 5
# # true

# # match - if thing on left has something that matches thing on right
# "watching" =~ /ing/
# # returns 5 for index location of beginning

# # not match
# "watching" !~ /be/
# # true

# # spaceship operator - compares thing on left to thing on right (1, 0, -1)
# 5 <=> 6
# # return -1


# important array methods:
# +++ creating, accessing, updating, adding, deleting

array = Array.new
array = []


array[1]
# access index 1 in array


array = [1, 2, 3, 4, 5]
array[1] = 10
# [1, 10, 3, 4, 5]


array << item
array.push(item)


array = [2, 4, 6, 8, 10, 12, 14]
array.pop   # returns 14 and removes
array.delete(4)
array.delete_at(1)
# [2, 8, 10, 12]


# compact, uniq, sort, sort_by, select, reject, find, index, delete_at, delete,
# slice, flatten, include?, insert(location, obj), length, map, each, each_index,
# each_with_index, inject, push, pop, shift, shuffle, max, min

# compact   returns new array without nil values

[nil, 3, nil, 2, nil, 1].compact
# new_array = [3, 2, 1]

# uniq    returns new array with only unique values

[1, 2, 3, 4, 5, 5, 5].uniq
# new_array = [1, 2, 3, 4, 5]

# sort  returns new array sorted

[5, 2, 9, 3, 7].sort 
# [2, 3, 5, 7, 9]

# sort_by   alters existing array and sorts by block indicators

["hi", "cat", "array", "concatenate", "bye"].sort_by! {|x| x.length}
# ["hi", "cat", "bye", "array", "concatenate"] 

# select   returns new array of what evaluates to true

[4, 3, 6, 5, 8, 7, 10, 9].select {|num| num.odd?}
# [3, 5, 7, 9] 

# reject    returns new array of remaining items, not including those that did not evaluate to true

[4, 3, 6, 5, 8, 7, 10, 9].reject {|num| num.odd?}
#  [4, 6, 8, 10]

# find   also find_index - returns first index of value that returns true for block

[4, 3, 6, 5, 8, 7, 10, 9].index {|num| num.odd?}
# 1

# index

# same as above

# delete   deletes all items from self and returns deleted item

[4, 3, 6, 5, 8, 7, 10, 9].delete(8)
# 8 

# delete_at    

["Alex", "Claw", "Diana", "Sylvia", "Audrey", "Paro"].delete_at(0)
# Alex
["Alex", "Claw", "Diana", "Sylvia", "Audrey", "Paro"].delete_at(66)
# nil

# slice   returns element at index - can take a range [1..50] or [index, length] [1, 4]

[4, 3, 6, 5, 8, 7, 10, 9][1..4]   # two dots includes last index in range
# [3, 6, 5, 8] 
[5, 4, 3, 2, 1, 2, 3, 4, 5][1..4]  # three dots does not include last index in range
# [3, 6, 5]

# flatten     returns new array of all subarrays included as one, single array

[4, 3, 2, 1, [4, 3, 2, 1]].flatten
# [4, 3, 2, 1, 4, 3, 2, 1] 

# include?

[4, 3, 6, 5, 8, 7, 10, 9].include?(6)
# true

# insert(location, obj)



# length



# map



# each 



# each_index


# important hash methods:
# +++ creating, accessing, updating, adding, deleting
# each, each_key, each_value, empty?, flatten (turns to array), has_key?, has_value?,
# include?, key, value, length, merge, reject, select, shift (returns array shift portion),
# to_a, sort, sort_by, map
# important object methods:
# nil?, empty?, object_id, dup, class, superclass, ancestors, instance_of?, is_a?(class),
# kind_of?(class), respond_to?, send, to_s, to_sym
# important string methods:
# length, split, slice, push, capitalize, upcase, downcase, chars, chomp,
# empty?, gsub, include?, index, reverse, slice, swapcase, to_f, to_i, to_sym
# important fixnum methods:
# even?, odd?, next, to_f, to_s,
# classes
# initializing and calling instance objects
# instance vs class methods 
# new, method_missing, <




