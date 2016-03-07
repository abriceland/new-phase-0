# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below


def array_concat(array_1, array_2)
    together = array_1 + array_2
    return together

end
    

def array_concat(array_1, array_2)
    
    i = 0
    while i < array_2.length
    current_item = array_2[i]
    array_1 << current_item

    
    i += 1
    end
    return array_1

end
  

def array_concat(array_1, array_2)
    c = array_1 + array_2
    c
end
