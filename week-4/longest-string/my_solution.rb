# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)

    long_string = list_of_words[0]
    
    i = 0
    while i < list_of_words.length
    current_item = list_of_words[i]
    if current_item.length > long_string.length
      long_string = current_item
    end
    i = i + 1

    end
 long_string
end


def longest_string(list_of_words)
    
    x = list_of_words.max

    return x
end    
