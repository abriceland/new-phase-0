# PezDispenser



# PezDispenser Class from User Stories

# I worked on this challenge with: Chand Nirankari.
# I spent 1 hour on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order of the flavors coming up.

# Pseudocode
# 1) Create a Pez Dispenser Class with attribute reader only - flavors?

# 2) Initialize Method 
  # Use attribute reader as arugment and define instance variable 

# 3) Create method "pez_count" which counts the number of pez items in the pez dispenser 
  # Create an array of the flavors within the class (use flavors given in driver test code)
  # Use ruby length method to count how many are in the dispenser.
  # Return/Print out the number of pez items in dispenser

# 4) Create method "get_pez" which removes pez items from the pez dispenser and gives flavor of item dispensed
  # Reverse flavors array, which will give the flavors in the order they should come out of the dispenser 
  # After flavors array has been reversed, use pop method to pop one item off the back and return that flavor that has been "popped off" 

# 5) Create method "add_pez" which adds a flavor of pez into the dispenser 
  # Use string of flavor as arugment 
  # Take a flavor and push the flavor back into the flavors array
  # Return updated flavors array 

# 6) Create method "see_all_pez" which will display all flavors in the dispenser in order 
  # print it out on new lines   \n  new line


# Initial Solution

class PezDispenser
  attr_reader :flavors
  
  def initialize(flavors)
    @flavors = flavors
  end
  
  def pez_count # maybe we need an argument??
    number_of_pez = flavors.length
    # puts "Now you have #{number_of_pez} pez!"
  end
  
  def get_pez
    # puts "Oh, you want one do you?"
    reverse_flavors = flavors.reverse
    pop_flavors = reverse_flavors.pop
    # puts "The pez flavor you got is: #{pop_flavors}!" 
  end
  
  def add_pez(added_flavor)
    reverse_flavors = flavors.reverse #array in reverse of existing flavors
    reverse_flavors << added_flavor #pushing in added flavor into reversed array
    # puts "Adding a #{added_flavor} pez."
  end
  
  def see_all_pez
    flavors.each {|item| puts item}
  end
  
end

# Refactored Solution



# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle

super_mario = PezDispenser.new(flavors)

puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"

puts "Here's a look inside the dispenser:"

puts super_mario.see_all_pez

puts "Adding a banana pez."

super_mario.add_pez("banana")

puts "Now you have #{super_mario.pez_count} pez!"

puts "Oh, you want one do you?"

puts "The pez flavor you got is: #{super_mario.get_pez}"

puts "Now you have #{super_mario.pez_count} pez!"



## REFLECT

# What concepts did you review in this challenge?
  # We reviewed creating and initializing a class, defining methods within a class and passing an instance variable throughout a class. 

# What is still confusing to you about Ruby?
  # Ruby is getting a bit easier, but algorithmic thinking is still difficult sometimes. 

# What are you going to study to get more prepared for Phase 1?
  # We are studying and reviewing basic Ruby concepts. 


