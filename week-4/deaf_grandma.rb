

while true
puts "Speak to your grandmother, son."
input = gets.chomp

if input == input.downcase
    puts "HUH?!  SPEAK UP, SONNY!"
elsif input == "BYE"
    puts "GOODBYE, SONNY!"
    break
else 
    puts "NO, NOT SINCE 1967!"
end
end