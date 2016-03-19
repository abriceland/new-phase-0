# largest number method


def largest_number(numbers)
    largest_number = 0
    
    i = 0
    while i < numbers.length
        current_num = numbers[i]
        if current_num > largest_number
            largest_number = current_num
        end
    i += 1
    end   
    largest_number
end    

p largest_number([98, 77, 32, 170, 251, 43])
