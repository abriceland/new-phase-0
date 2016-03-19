# Create a smallest number method,
# take an array of numbers, return smallest (use while loop)



def smallest_number(array)
    p array
    smallest_number = array[0]
    
    i = 0
    while i < array.length
        current_num = array[i]
        if current_num < smallest_number
            smallest_number = current_num
            p smallest_number
        end
        i += 1
    end
    smallest_number
end    


puts smallest_number([5, 90, 45, 2, 17])




