words = []

while true
    puts "Enter as many words as you like, one per line.  When you're done, press Enter."
    input = gets.chomp
    words.push input
    break if 
        input == ""
end
    
alpha = words.sort
p alpha


