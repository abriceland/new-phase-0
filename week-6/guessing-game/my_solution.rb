# Build a simple guessing game


# I worked on this challenge with: Chand Nirankari and some help from Esther Leytush
# I spent 1 hour on this challenge.


# Pseudocode
# Input: Integer called "Guess"
# Output: True if guess is correct, false if guess is incorrect
# => method guess: returns :high :low :correct
# => method solved? returns true or false as a value 
# Steps: 
# 1) Create attribute: answer
# 2) Initialize class with answer as argument
# 3) Inside the guess method, use if/else to return whether the answer integer is high low or correct 
# 4) Inside solved? method - if/else method to evaluate if guess method was correct - return true, if 
#     guess method is correct; iis high or low, return false 
# Initial Solution

class GuessingGame
    attr_reader :answer
    
    def initialize(answer)
        @answer
    end    
    
    def guess(guess)
        @answer = guess
            if @answer > 10
                @answer = :high
            elsif @answer < 10
                @answer = :low
            else @answer == 10
                @answer = :correct
            end
    end
    
    def solved?
        if @answer == :correct
            p "You guessed the number!"
            p "May the riches of the ages be showered upon you!"
            return true
        else @answer == :high || @answer == :low
            p "You have not unlocked the secret number."
            p "Try again."
            false
        end    
    end                
end    

game1 = GuessingGame.new("Game1")

p game1.guess(11)

p game1.solved?


class GuessingGame
    attr_reader :answer
    
    def initialize(answer)
        @answer
    end    
    
    def guess(guess)
        @answer = guess
            if @answer > 10 == :high
            elsif @answer < 10 == :low
            else @answer == :correct
            end
    end
    
    def solved?
        puts @answer = :correct ? ("Correct!") : ("You have not unlocked the secret number.")
            if @answer == :correct 
                return true
            else 
                false
            end    
    end                
end    

=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables are like communal sports equipment shared in a neighborhood.  They are effective throughout the
neighborhood (or class), but aren't effective outside of it.  Methods defined inside a class function within
that class, but not outside.  


When should you use instance variables? What do they do for you?

They allow variables to be used outside of the method, which is extremely helpful for more solving more
complex problems. 


Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

We had to make sure we returned the puts statement in the solved? method before returning true or false.
Otherwise, after returning, the program stopped.  


Why do you think this code requires you to return symbols? What are the benefits of using symbols?


=end

