
while true
    puts "Do you like Dev Bootcamp?"
    answer = gets.chomp.downcase
    if answer == "yes"
        puts "You're lying!"
    else
        puts "Thanks for your honesty!"
        break
    end
end    
    