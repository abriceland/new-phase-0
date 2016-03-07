# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

def shortest_string(list_of_words)
    
    short_string = list_of_words[0]
    
    i = 0
    while i < list_of_words.length
    current_item = list_of_words[i]
    if current_item.length < short_string.length
      short_string = current_item
    end
    i = i + 1

    end
 short_string
end


def shortest_string(list_of_words)
    
    x = list_of_words.min

    return x
end    

