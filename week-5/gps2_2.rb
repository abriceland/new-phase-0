# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define method w/ input string
  # create hash called "foods"
  # break string up with space as delimited
  # assign an instance variable 
  # iterate over strings 
  # push each individual string into hash
  # set default quantity with 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def grocery_list(items)
    
    @foods = Hash.new(0)
    strs = items.split(' ')
    
    strs.each do |f|
        @foods[f] = 1
    end
    print @foods
    return @foods
end

grocery_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name and quantity
# steps: 
# create a new method add_grocery with two parameters (item, qty)
# define hash as instance variable of @foods
# push new item and quantity into @foods
# print and return @foods
# output: a hash

def add_grocery(item, qty)
    
    @foods[item] = qty
    print @foods
    return @foods
    
end

add_grocery("potato", 2)

# Method to remove an item from the list
# input: item
# steps:
# create a new method delete_grocery with one parameter
# delete key from instance variable @foods 
# print and return @foods
# output: a hash

def delete_grocery(item, qty)
    @foods.delete(item, qty)
    print @foods
    return @foods

end

delete_grocery("apples")

# Method to update the quantity of an item
# input: item name and quantity
# create a new method update_grocery with two parameters (item, qty)
# define hash as instance variable of @foods
# push new item and quantity into @foods
# print and return @foods
# output: a hash

def update_grocery(item, qty)
    @foods[item] = qty
    print @foods
    return @foods
end    

update_grocery("potatoes", 20)

# Method to print a list and make it look pretty
# input: item name and quantity
# steps:
# define new method pretty_print with two parameters (item, qty)
# iterate over the hash foods
# print each key-value pair of the hash as a string on a new line 
# output: a hash

def pretty_print(item, qty)
    
    @foods.each {|item, qty| puts "\n" + " #{item}: #{qty}"}

end

pretty_print("apples", "potato")


new_list = ("Lemonade Tomatoes Onions Ice cream")
grocery_list(new_list)


add_grocery("Lemonade", 2)
add_grocery("Tomatoes", 3)
add_grocery("Onions", 1)
add_grocery("Ice cream", 4)


delete_grocery("Lemonade", 1)


update_grocery("Ice cream", 1)

print_pretty

=begin
What did you learn about pseudocode from working on this challenge?
I learned how important it is to have a clear idea of how to solve the problem and translate the solution into pseudocode.  Once I understand enough of Ruby, the coding will be the easy part after I pseudocode correctly.


What are the tradeoffs of using Arrays and Hashes for this challenge?
I don't think this challenge is appropriate for arrays, since there are two associated values that need to be stored together.  Hashes definitely makes it easier to store the data.

What does a method return?
It returns the data transformed in the way the method was designed to do.  

What kind of things can you pass into methods as arguments?
Strings, integers, floats, arrays

How can you pass information between methods?
Using the instance variable

What concepts were solidified in this challenge, and what concepts are still confusing?
I am still struggling with coding logic, since I have no previous experience.  I appreciated being led through the steps to write good pseudocode.  This is the instruction I was hoping to get from Dev Bootcamp, but I need more.   


=end
