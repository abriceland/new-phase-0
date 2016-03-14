# Die Class 2: Arbitrary Symbols


# I worked on this challenge with Chand Nirankari and Esther Leytush
# I spent 1 hour on this challenge.

# Pseudocode

# Input: an array
# Output: a random sample from input, which if empty returns Argumenterror
# Steps: 
    # 1. Initialize class with argument
    # 2. If array is empty, return Argumenterror
    # 3. Assign an instance variable the argument received
    # 4. Define sides method, will return # of sides 
    # 5. Define roll method, will return random side


# Initial Solution

class Die
  def initialize(labels)
      if labels.empty? == true
          raise ArgumentError.new("Why roll without sides, braindead zombie!!")
      end
      @sides = labels
  end

  def sides
      @sides.length
  end

  def roll
      @sides.sample
  end
end


# Refactored Solution



# Reflection
=begin

What were the main differences between this die class and the last one you 
created in terms of implementation? Did you need to change much logic 
to get this to work?

No, just some things needed to be changed from the previous challenge.  


What does this exercise teach you about making code that is easily changeable 
or modifiable? 

It makes it a lot easier down the road when code is written that can be modified
easily.  It took much less time both to write and tweak.  


What new methods did you learn when working on this challenge, if any?

I worked with .length and .sample, both of which I had used before.


What concepts about classes were you able to solidify in this challenge?

I have a better understanding that classes are templates and building them is
about figuring out what characteristics the need to work.


=end