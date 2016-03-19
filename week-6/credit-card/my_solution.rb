# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Chand Nirankari and some tips from Esther Leytush.
# I spent 4.5 hours on this challenge.

# Pseudocode


# For this challenge, you will need to break down the algorithm into the following steps. 
# You will probably want to break these down into individual methods that are called when you 
# run the #check_card method.

# Pseudocode
# Input: A series of integers 
# Output: True, False or Argument Error 
# Steps:
# => 1) Figure out if the input is 16 digits, if not, raise Argument Error
# => 2a) Convert integers into array and double every other digit (starting from 2nd to last digit)
#       2b) Create a duplicate of the array
#       2c)Use array index numbers (from the back) to identify and break into a new array
#       2d) Double numbers in new array
#       2e) Join the two arrays into one
# => 3) Break all numbers into single digit integers
# => 4) Sum them together 
# => 5) Divide by 10, if that is equal to 0, then it is true, otherwise false.  
# Note: Can we keep it in an array? Can an array be divided by 10? 
#
# Initial Solution
# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
    attr_reader :ccnumber 
    
    def initialize(ccnumber) #Initialize the class and instance variable; raise ArgumentError if # is less or more than 16 digits
        if ccnumber.to_s.length > 16 || ccnumber.to_s.length < 16 
            raise ArgumentError.new("This is not a valid credit card number, you are a fraud.")
        end
        @ccnumber = ccnumber
    end    
    
    def check_card #Converts credit card number to an array
        ccnumber_array = ccnumber.to_s.split("").map {|x| x.to_i}   #[1, 2, 3, 4, 1, 2, 3, 4]

#Splits the array into two arrays, by forming a new array by ever other number, starting from index position -2 (2nd from the back)

        i = 0
        while i < ccnumber_array.length
            ccnumber_array[i] = ccnumber_array[i] * 2
            i = i + 2      
        end 
# [2, 2, 6, 4, 2, 2, 6, 4]

#split each digit inside the doubled_digit_array into single digits and keep it inside the same array (convert to string, then back to integer)
        ccnumber_array = ccnumber_array.map {|x| x.to_s}.join.split("").map {|x| x.to_i}

#add all numbers inside the joined array together
        ccsum = ccnumber_array.inject {|sum, x| sum + x }
   
#Add all methods in this method and determine whether sum of joined arrays % 10 or not. 
        if ccsum % 10 == 0 
            return true
        else 
            return false  
        end
    end
end    

card = CreditCard.new(4563960122001999)
p card.check_card



# Refactored Solution
=begin
#Reflection
What was the most difficult part of this challenge for you and your pair?

We wrote an initial solution with more steps, but it didn't work, so we had to go back, rethink it and 
rework it.  

    - 
What new methods did you find to help you when you refactored?

We used .inject, which was relatively new, but worked well

    -
What concepts or learnings were you able to solidify in this challenge?

We were able to learn how to break down a complex problem more effectively and think about flow 
control.  We also learned how to chain methods together to do multiple functions at one time. 

    -
=end