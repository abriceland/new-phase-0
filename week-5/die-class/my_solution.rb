# 0. Pseudocode

# Input: The number of sides (in the parenthesis)
# Output: A random number between 1 and sides
# Steps:
#     1a) Initialize a new object with an argument of sides 
#     1b) If the side is less than 1, raise an argument error
#     2a) Sides Method: returns the number of sides
#     3a) Roll Method: returns a random number between 1 and the number of sides

# 1. Initial Solution
class Die
 def initialize(sides)
      if sides < 1 
          raise ArgumentError.new("Your die does not have a side!")
      end 
      @sides = sides 
 end

 def sides
   @sides 
 end

 def roll
   roll_array = (1..sides).to_a
   roll_array.sample
 end
end

# 3. Refactored Solution
class Die
    attr_reader :sides

 def initialize(sides)
      if sides < 1 
          raise ArgumentError.new("Your die does not have a side!")
      end 
      @sides = sides 
 end

 def roll
   rand(1..sides)
 end
end

=begin


What is an ArgumentError and why would you use one?
It is an automatic warning from the program that something is outside of the desired parameters.  It is a general warning.  


What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I used rand for the roll method, in order to choose a random side.  It wasn't that difficult.


What is a Ruby class?
It is a prototype that other objects can be built from.  


Why would you use a Ruby class?
You would create a class if you wanted to make a number of similar objects.  Setting up the parameters in the class would save time and effort vs. doing the same for each individual object.


What is the difference between a local variable and an instance variable?
A local variable can only be used within a method.  An instance variable can be used between methods.


Where can an instance variable be used?
It is available to every instance of the object.








=end