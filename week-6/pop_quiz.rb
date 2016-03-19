Pop Quiz

Create a new array
1. array = Array.new   #correct
   array = []    #correct
   
Add an item to an array   
2. array << item    #correct
   array[item]   #wrong    array.push(item)
   
Access an item in an array   
3. array[2]  #correct

Create a new hash
4. hash = Hash.new  #correct
   hash = {}  #correct
   
Add a value to a hash   
5. hash[key] = value    #wrong  => was original

hash.key(value)  #access value in hash

Access a key in a hash
6. hash[0]   #wrong   hash[key]

Create a variable with a string assigned
7. placeholder = "I'm a string!"   #correct

Break up a string by spaces
8. placeholder.split(" ")   #correct

Break up a string into individual characters
9. placeholder.split("")   #correct

Get the number of characters in a string
10. placeholder.length   #correct

Get the number of characters in an array
11. array.length    #correct

Access the last value of an array
12. array[-1]    #correct

13. 
    def while_loop(array)    #WRONG
        array = ["Paro", "Audrey", "Sylvia"]
        i = 0
        while i < array.length do |x|
            current 
            p x
            i += 1
        end
    end    

14. def each_do    #correct

        array.each do |x|
            p x

        end    
    end

15. hash.each do |x, y|    #correct
        p "I love that #{x} does #{y}!"
    end
    
16. 

class Puppy                      #correct
    attr_reader :name
    
    def initialize(name)
        @name = name
    end
    
    def bark
        "I love to make noise at night!"
    end    
end

fala = Puppy.new("Fala")

p fala.bark


    
    
    
    
    
    






