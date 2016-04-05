
# // write a method that takes an array of numbers and returns true if any
# // number in the array, added up to its index, equals 10.

# define a method that takes array as argument
# iterate over array 
#   need placeholder for current number
#   need value of each index for current
#   need to add value of current number and each index together
#   if sum is equal to 10, return true


# def ten(array)

#     array.each_with_index do |number, i|
#         if number + i = 10
#             return true
#         end
#     end
#     array
# end    


# p ten([0, 9, 5])


# PRACTISE PROBLEMS - RUBY 
##################################

# // iterate through array and choose smallest number
	# Pseudocode:
		# 1) create a method which takes a number as its argument
		# 2) create a counter index
		# 3) create a while loop which goes through each number in the array and becomes the location of the array counter index
		# 4) create a new variable which is that array counter index
		# 5) 
# 
# def smallest_num(array)
# 	num = array[0] 
# 	i = 0
# 
# 	while i < array.length    #while 0 is less than 3  => true / while 1 < 3 = true / while 2 < 3 = true
# 		current_num = array[i] #current_num becomes 3  / current numb becomes 2  / current numb becomes 1 
# 			if current_num < num  #if 3 is less than 3 = false  / if 2 < 3 = true  / if
# 			num = current_num # because current num becomes a smaller number, rerefine the variable num
# 			end 
# 		i += 1  #adds 1 to counter 
# 	end
# 	return num
# end
# 
# p smallest_num([3,2,1])

# // take sentence, split into array, iterate through and choose smallest word

# // take array of words, return the third greatest number in the array 
# // (two versions: one with sort, one without)

# // method that returns the most common letter in a string

# // method that takes a book title and capitalizes appropriately

	#Pseudocode:
		#1) Create a method that takes a book as its argument
		#2) Create an array of words that are 
# 
# def capitalize(book)
# word_array = ["the","a","and","or","in"] # these are words we don't want to capitalize
# new_book = [] # placeholder for the new book array - needs to be in array so it can iterate over each word, which can be done only in an array
# 
# 	book = book.split(" ") #turns book string into an array
# 
# 	book.each do |word|   #picks up each item (word) in the book array and iterates over it
# 		if word_array.include?(word) #if the word array includes one of the words in the book
# 			new_book.push(word) # do nothing, push that word into the NEW book array variable
# 		else 
# 			word = word.capitalize  # if it is NOT one of the words in the word array 
# 			new_book.push(word)
# 		end
# 	end
# 
# 	new_book[0] = new_book[0].capitalize
# 
# 	new_book = new_book.join(" ")
# 
# 	return new_book 
# end 
# 
# p capitalize("harry potter and the sorcerer's stone")
# 
# p capitalize("the wind and the willows")

# // add commas into a number to look like a standard number

# 	// add commas starting from the back of the number and then reverse 

	#Pseudocode:
		# 1) create a method with a number as its argument (and that number should be longer than 3 digits)
		# 2) Convert to string 
		# 3) Reverse the number string
		# 4) Turn into an array and break into groups 3
		# 5) Join each group of 3
		# 6) Join each group with a comma in between
		# 6) Reverse the number again

# def numcomma(num)
# 
# 	new_num = num.to_s.reverse # => "654321"
# 	new_num = new_num.split("").each_slice(3).to_a # => ["6","5","4","3","2","1"] => [["6","5","4"],["3","2","1"]] #.split turns it into one array, each_slice groups them into 3 and CAN return an array, but you have to call .to_a, and then .to_a turns it into subarrays 
# 
# 	new_num = new_num.map{|group| group.join}.join(",").reverse #for each group in the array, join everything inside the subarray # => [["654"],["321"]] # => ["654,321"] =>  "654,321" => "123,456"
# 
# 	new_num	
# end
# 
# p numcomma(123456)
# 
# #"123,456"
# 
# 
# # // write a method that returns the factorial of a given number
# def factorial(num)
# 
# factor = 1
# i = 1
# 
# 	while i <= num  #while counter is less than or equal to 4 / less than or equal to 3 
# 		factor = factor * i  #factor =  1 * 1  / = 1 * 2 / = 2 * 3 / = 6 * 4
# 		i += 1  #adds 1 to counter
# 	end
# 	return factor  
# end
# 
# p factorial(4)
# 
# 
# def factorial(number)
# 	i = 1
# 	factor = 1
# 
# 	while i <= number 		
# 		factor = factor * i	 
# 		i += 1  			 
# 	end
# 	return factor 
# end
# 
# p factorial(4)


# first loop we want 4 * 3 
# second loop we want that product * 2
# third loops we want that product * 1

#1) i = 1 	2) i = 2 	3) i = 3 	4) i = 4 (because it is less than OR EQUAL TO number it will still go through 4)

#1) factor = 1 * 1 = (1)	2) factor = 1 * 2	3) factor = 2 * 3	4) factor = 6 * 4	

#1) counter increase by 1	2) counter increase by 1 3) counter increase by 1 4) counter increase by 1, will go go further because loop stops at 4 

# // write a method that takes an array of numbers and returns true if any number in the array, added up to its index, equals 10.
​
​
# // write method that prints out factors for each number from 1 to a given max. 
​
​
# // method that takes an array of numbers, and returns a new array with all the numbers doubled
​
​
# // method that takes an array of words ["grasping", "turning", "running", "fighting"] and selects a word that contains "turn"
​
	#pseudocode:
		#1) create a method with an array as its argument
		#2) pull out the word at index 1 in the array (since it is the 2nd word)
		#3) create a variable that will hold the sliced word which is equal to- slice the last 3 letters from the back of the word
		#4) return that new variable
# ​
# ​
# def turn(array,word_to_find)
# 	word = ""
# 	i = 0
# ​
# 	while i < array.length # while the counter is less than the # of items in the array (which is 4 in this case)
#  		current_word = array[i] # new variable holds that word at the index location
#  			if current_word.include?(word_to_find)
#  				return current_word
#  			end
#  		i += 1
# 	end
# end
# ​
# p turn(["grasping", "turning", "running", "fighting"],"run")
# ​
# ### 
# def turn(array)
# 	array.each do |word|  #pick up each word in the array 
# 		if word.include?("turn") #if one of the words includes the string "turn"
# 			return word #return only that word that includes "turn"
# 		end 
# 	end
# 	return "The word turn is not in this array."
# end
# ​
# p turn(["grasping", "turning", "running", "fighting"])
# ​
# ​
# ​
​
​
​
​
# // fahrenheit to celsius conversion
​
​
​
# // methods that do calculations: add, subtract, multiply, divide
​
​
​
# // Write a method that takes an array of integers and returns an array
# // with the array elements multiplied by two.
​
​
# // Write a function oddball_sum(numbers), which takes in an array of 
# // integers and returns the sum of all the odd elements.
​
​
# // method that takes two numbers and returns the greatest common factor
​
​
# // Write a function disemvowel(string), which takes in a string, 
# // and returns that string will all the vowels removed.
​
​
# // method that takes a number and returns true/false depending on if it is prime
​
​
# // adding up items in an array
	
	# Create method with an array as its argument
	# Create a counter that starts at index location 0
	# While Loop - while the counter is less than the number of items in an array, 
	# create new variable that is the sum 
	# 
​
# 	def adding_array(array)
# 		sum = 0 # placeholder for the sum of all the array numbers
# 		i = 0 # counter of index 
# ​
# 		while i < array.length # while the counter (index number) is less than the array length 
# 			new_num = array[i] #create a new variable, which becomes the array at the location of the index counter
#  			sum = new_num + sum  #our placeholder variable sum becomes the array at the location of index counter plus itself
# 			i += 1 #increase the counter by 1 every time it loops
# 		end 
# 		return sum #return the sum variable after it is done looping
# 	end
	
	# p adding_array([1,2,3]) 
​
​
​
# // sum of integers from 1 to given num
​
​
# // join strings in an array into one large string 
​
​
# // reverse a string || reverse an array
​
​
# // try out hashes
​
​
# // find the mode (probably use hashes for this one too)
​
​
# // count vowels in a string
​
​
# // recursive palindrome
​
​
# // 'nearby az': Write a method that takes a string in and returns true if the letter
# // "z" appears within three letters **after** an "a". You may assume
# // that the string contains only lowercase letters.
​
​
# // Write a method that takes an array of numbers. If a pair of numbers
# // in the array sums to zero, return the positions of those two numbers.
# // If no pair of numbers sums to zero, return `nil`.
​
​
# // method that returns true if num passed to it is a power of 2, otherwise return false
​
​
# // method that finds perfect squares in a given array
​
​
# // Write a method that takes in a string and an array of indices in the
# // string. Produce a new string, which contains letters from the input
# // string in the order specified by the indices of the array of indices.
​
​
​
# // Write a method that takes in a string and returns the number of
# // letters that appear more than once in the string. You may assume
# // the string contains only lowercase letters. Count the number of
# // letters that repeat, not the number of times they repeat in the string.
​
​
​
# // Write a function lucky_sevens?(numbers), which takes in an array of integers 
# // and returns true if any three consecutive elements sum to 7. 
​
​
# // given a word, return true if that word's vowels are in alphabetical order.
​
​
# // bubble sort an array
​
# //In Ruby, Array has a `uniq` method that removes duplicates from an array. It
# // returns the unique elements in the order in which they first appeared:
# //
# // [1, 2, 1, 3, 3].uniq # => [1, 2, 3]
# //
# // Write your own `uniq` method, called `my_uniq`; it should take in an
# // Array and return a new array. It should not call `uniq`.
​
​
# //   Implement a Rock, Paper, Scissors game. The method `rps` should take
# //   a string (either "Rock", "Paper" or "Scissors") as a parameter and
# //   return the computer's choice, and the outcome of the match. Example:
# //
# // rps("Rock") # => "Paper, Lose"
# // rps("Scissors") # => "Scissors, Draw"
# // rps("Scissors") # => "Paper, Win"
​
​
# //   Implement a Swingers game. The method `swingers` should take an
# //   array of couple arrays and return the same type of data structure,
# //   with the couples mixed up. Assume that the first item in the couple
# //   array is a man, and the second item is a woman. Don't pair a person
# //   with someone of their own gender (sorry to ruin your fun). An
# //   example run of the program:
# //
# // swingers([
# //   ["Clyde", "Bonnie"],
# //   ["Paris", "Helen"],
# //   ["Romeo", "Juliet"]
# // ])
​
​
# // Write a method `substrings` that will take a `String` and return an
# // array containing each of its substrings.
# // Example output: substrings("cat") => ["c", "ca", "cat", "a", "at", "t"]
​
​
​
# // To represent a *matrix*, or two-dimensional grid of numbers, we can
# // write an array containing arrays which represent rows:
# //
# // rows = [
# //     [0, 1, 2],
# //     [3, 4, 5],
# //     [6, 7, 8]
# //   ]
# //
# // row1 = rows[0]
# // row2 = rows[1]
# // row3 = rows[2]
# //
# // We could equivalently have stored the matrix as an array of
# // columns:
# //
# // cols = [
# //     [0, 3, 6],
# //     [1, 4, 7],
# //     [2, 5, 8]
# //   ]
# // Write a method, `my_transpose`, which will convert between the
# // row-oriented and column-oriented representations.
​
​
# // Martha has created a hash with letter symbols as keys to represent items that start 
# // with their keys. However, she realized everything is off by one letter.


