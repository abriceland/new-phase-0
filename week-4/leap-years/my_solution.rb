# Leap Years

# I worked on this challenge by myself with some help from Esther Leytush.


# Your Solution Below

def leap_year?(num)
    return false if num % 4 != 0
    
    if num % 100 != 0
        return true
        
    elsif num % 400 == 0
        return true
    
    else num % 100 == 0 && num % 400 != 0
        return false
    end
end
        

