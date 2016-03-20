# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 5 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # define the method with array of arrays as an argument
  # create new array to hold (b, i, n, g, o) values
  # iterate over ["b", "i", "n", "g", "o"] array to randomly pull one letter
  # iterate over array of arrays to randomly pull one number
  # return these values as bingo call

# Check the called column for the number called.
  #see below

# If the number is in the column, replace with an 'x'
  #see below

# Display a column to the console
  #see below

# Display the board to the console (prettily)
  #see below

# Initial Solution

class BingoBoard
  attr_reader :board
  require pp
  
#initialize board.  assign argument to an instance variable, so it can be shared throughout the class
#create hash of constant, to be accessible outside of class, which points to index location of letters
#assign to instance variable of board an array of arrays with nil values
#create column and row variables assigned to index locations

  def initialize(board)
    @bingo_board = board
    BINGO = {"b"=>0, "i"=>1, "n"=>2, "g"=>3, "o"=>4}
    @bingo_board = [[nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil]]
  
    @column_b = board.map{|array| array[BINGO["b"]]}
    @column_i = board.map{|array| array[BINGO["i"]]}
    @column_n = board.map{|array| array[BINGO["n"]]}
    @column_g = board.map{|array| array[BINGO["g"]]}
    @column_o = board.map{|array| array[BINGO["o"]]}
    
  end
  

#define method to call a letter/number combination
#assign variable as letter choice as b i n g o
#assign variable as number choice as numbers given by argument (to increase chances of winning)
#assign instance variable as letter to pick sample from given letter set
#assign instance variable as number to pick sample from given number set

  def call
    letter_choice = ["b", "i", "n", "g", "o"]
    number_choice = @bingo_board
    
    @letter = letter_choice.sample
    @number = number_choice.sample

    p "Calling #{@letter}#{@number}!"
  end


#define method to update spot on bingo board
#create a new array 
#iterate over BINGO to find match with @number
#if letter matches, push into new array
#iterate over @bingo_board to find match with @number
#if number matches, push index number of row into new array

  def check
    spot = Array.new
    
    BINGO.each do |key, index|
      if @letter == key
        spot << index
      end
    end
    
    
    @bingo_board.each do |number|
      if @number == number
        spot << number[i]
        
      end
    end
    
    #here I need to associate index of number with the correct @bingo_board index.
    #Currently, spot = [n, n].  I either want to change it to [n][n] to represent the 
    #proper index location in the @bingo_board array or iterate over spot to pull out the values and get the 
    #location that way.
    
    #here I want to take the combined index location and change its value permanently (destructively)
    #to "X"
    
    p "This square has been changed to X - #{ }#{ }"
    
  end
  
#define a method to print only a column of the board 
#create if statements for each correct column of board
#return instance variable of appropriate row, iterated over to remove comma and to go to next line,
#in order to create a more visual column format
  
  def print_column(let)
    
    if let == "b" || "B"
      return @column_b.map {|index| "#{index}"}.chomp + "\n"
    elsif let == "i" || "I"
      return @column_i.map {|index| "#{index}"}.chomp + "\n"
    elsif let == "n" || "N"
      return @column_n.map {|index| "#{index}"}.chomp + "\n"
    elsif let == "g" || "G"
      return @column_g.map {|index| "#{index}"}.chomp + "\n"
    elsif let == "o" || "O"
      return @column_o.map {|index| "#{index}"}.chomp + "\n"
    else
      p "That isn't a valid column name. Please use the letters B, I, N, G or O to choose a column."
    end    
  end  
  

#require pp (pretty print) at top of class
#define method to print board
#pretty print board

  def print_board
    pp @bingo_board

  end  
end

# Refactored Solution

#Did not attempt, since initial solution wasn't possible.


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call

new_game.check

new_game.print_column("b")

new_game.print_board



=begin
#Reflection

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

This was very difficult for me.  It is obviously a much more complicated problem with more elements
to juggle than we have dealt with previously.  I had to think about a number of ways to solve it and
I discarded many ideas along the way, as they proved untenable.  This was my best attempt, even though
it probably stills has holes in it.  

My style needs work.  It is difficult not to use Ruby jargon, now that I've learned some of it.  


What are the benefits of using a class for this challenge?

It keeps everything together, so that the variables are available to use in different methods.  


How can you access coordinates in a nested array?

By calling the array name followed by the index of the nested array and then the index of the item within
that array, i.e. @bingo_board[1][5] will give the number in @row_2, @column_o


What methods did you use to access and modify the array?

I used .map and .each do.


Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, 
what purpose does it serve, and how is it called?

.partition is a new method I researched for this challenge.  It divides an existing array into two parts based
on a boolean.  The first array will contain items returning true, while the second array will contain items returning
false.


How did you determine what should be an instance variable versus a local variable?

It was difficult in this challenge, because I felt I needed to access a number of the varioable in more than one 
method.  I'm sure I did it wrong, but most of my variables ended up being instance variables in this example for 
that reason.  


What do you feel is most improved in your refactored solution?

Since I was not able to solve the initial challenge and I had already spent so much time, I did not attempt to 
refactor.  



=end



