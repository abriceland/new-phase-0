# Quiz


# 1. array = Array.new
#   array = []
  
# 2. array << item
#   array.push(item)
   
# 3. array[0]

# 4. hash = Hash.new
#   hash={}

# 5. hash[key] = value

# 6. hash[key]

# 7. string = "I love coding"

# 8. string.split(" ")

# 9. string.split("")

# 10. string.length

# 11. array.length

# 12. 

# def print_method(array)
#     word = array[0]
    
#     i = 0
#     while i < array.length
#       p word
#     i += 1   
#     end   
# end

# print_method(["I am an array"])

# 13.

# def print_method(hash)
    
#     hash.each {|key, value| p "#{key}: #{value}"}

# end

# 14.

class Puppy
    attr_reader :name
    
    def initialize(name)
        @name = name
    end
    
    def bark
        p "Woof-woof-hoooooooo!!"
    end
    
end

fido = Puppy.new("Fido")

p fido.bark

