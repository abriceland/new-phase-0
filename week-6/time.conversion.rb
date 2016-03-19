# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.
# Pseudocode
# #   1. getting a number as integer for input     610
# #   2. define hour that divides number by 60 to get hours   10 
# #   3. define minutes to determine modulo  remainder    10
#     4. return hour: + minutes
#     5. interpolate string
  
  
  
def time_conversion(minutes)
    hour = minutes / 60
    minutes = minutes % 60
        if minutes.to_s.length == 1
            minutes = "0#{minutes}"
        end
    "#{hour}:#{minutes}"    
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts time_conversion(610)
puts time_conversion(925)
puts time_conversion(1000)

