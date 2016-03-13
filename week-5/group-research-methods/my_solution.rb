
# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  thing_to_find_as_regexp = Regexp.new(thing_to_find)
  return source.select {|x| x =~ thing_to_find_as_regexp }
end

def my_hash_finding_method(source, thing_to_find)
  x = source.select {|key, value| value == thing_to_find}
  return x.keys
end

# Identify and describe the Ruby method(s) you implemented.
# #select - I used this method to iterate over the source array and find matches.  This method searches over an enumerable object and returns a like enumerable object populated with positive search hits.  for example, #select on an array returns an array, #select on a hash returns a hash.
# #Regexp.new - I needed to feed #select a regular expression to use for searching for letters in a string.  It took me a while to figure it out, but by using Regexp.new I was able to convert the provided string into a regular expression which was then fed into the #select code block.
# #keys - when searching a hash, #select returns a hash of matching results.  Since I only needed to return an array of keys, I used #keys method which returns an array containing only the keys from the provided hash.


# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.collet! do [x]
  	if x.is.a?(Integer)
  		x+=thing_to_modify
  	else x
  	end
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each{|key, value| source[key] = value+thing_to_modify}
end

# Identify and describe the Ruby method(s) you implemented.
#I decided to use the command collect to iterate through the array.
#I added '!' so the command would be destructive.
#I used 'is_a?' to check if each element is an integer.
#The method returns true if the element is an integer, so I added 'things_to_modify'.
#I used the .each command to iterate through the hash to modify the values.
#The 'source[key] =' changes the values.


Person 3
def my_array_sorting_method(i_want_pets)
    
the_numbers = []
the_letters = []
    
    i_want_pets.each { |x| 
    
    if x.is_a? Integer 
        
        the_numbers << x
        
    elsif x.is_a? String
    
    the_letters << x
    
    end
    
    }
    
    the_numbers.sort!
    the_letters.sort!
    
  the_numbers.concat(the_letters)
  
end 


def my_hash_sorting_method(my_family_pets_ages)
    
    
  my_family_pets_ages.sort_by { |key, value| value }
    
 
end 


# Identify and describe the Ruby method(s) you implemented.

# Array Challenge: 

# (1) .each - I used the "each" method to iterate through the array, so that I could stop at each element in the array to determine whether the element was an Integer (a number) or a String.
# (2) .is_a? - I used the "is_a?" method to determine whether each element was an Integer or a String. If it was an Integer, I pushed it into a container I created for Intergers. If it was a String, I pushed it into a container I created for Strings. 
# (3) .sort! - I used the "sort!" method to put each container (now filled with either numbers or string) in numerical and alphabetical order
# (4) .concat - I used the "concat" method to join the number container and the letters container together. I made sure that the number container came first. 

# Hash Challenge: 

# (1) .sort_by - I used the "sort_by" method to sort the values in the hash. If you look at the syntax I used for this method, I identified that I just wanted the values sorted. Not only did it sort the values (bringing along its corresponding keys, but the program spit back out the hash in the nested array form that DBC asked for. Voila!



# Person 4


def my_array_deletion_method!(source, thing_to_delete)
  
  duplicate = source.dup

  i = 0
  while i < duplicate.length
    word = duplicate[i]
    if word.is_a?(Fixnum)
      i += 1
      next
    end
    if word.include?(thing_to_delete)
        source.delete(word)
    end
    i += 1
  end    
  source
end

def my_hash_deletion_method!(source, thing_to_delete)
source.delete(thing_to_delete)
source
end
  
# end

# Identify and describe the Ruby method(s) you implemented.
# .dup - creates a shallow copy of an object without info on any related objects
# .length - returns number of items in self
# .delete - deletes all items from self equal to object
# .is_a? - to determine if item is a number and, if so, to pass it and go to next in index

# These methods are easy to use.  .delete takes an object and deletes that object from self.
# .dup creates a duplicate array to iterate through, to ensure all items are being viewed before deletion.
# I also used .include? to search for the object to be deleted when iterating through the array.

# Person 5

def my_array_splitting_method(source)
    
    ints = []
    other = []
    out = []
    
    source.each {|idx| if idx.is_a?(Integer) then ints.push(idx) else other.push(idx) end}
    out.push(ints, other)
    
    p out
end

a = [1, 2, "red", "blue"]
my_array_splitting_method(a)

def my_hash_splitting_method(source, age)
    older = []
    younger = []
    out = []
    
    source.each { |k, v| if v <= age then younger.push([k, v]) else older.push([k, v]) end}
    out.push(younger, older)
    p out
end

pets = {"fido" => 12, "mittens" => 2}
my_hash_splitting_method(pets, 4)

=begin
Identify and describe the Ruby method you implemented
    I implemented my_array_splitting_method, which returns two arrays, one of all the integers in an array and one of everything else,
    as well as my_hash_splitting_method which sorts a has of pet names and ages into two arrays based on wether they are older or younger than an age given.
Teach your accountability group how to use the methods
    In both challenges  i used  the methods .each (to iterate across the original array) and .push (to add values to a new array). 
    Those Methods are probably familiar to all of us by now. 
    In the first method i used .is_a? which may be new. It is used to chack what class an object belongs to. In this case i wanted to see if 
    a specific index of an array was an Integer of not. 
Share any tricks you used to find and decipher the Ruby Docs
    I normally start by reading the list of avalible methods then by using ctrl-f to search the page for what i want. 
    
    