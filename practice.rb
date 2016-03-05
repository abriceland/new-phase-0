

def longest_string(sentence)
 words = sentence.split
 p words
 longest_word = words[0]
 puts "longest word is #{longest_word}"
 i = 0
 while i < words.length
   current_item = words[i]
   if current_item.length > longest_word.length
     longest_word = current_item
   end
   puts "current word is #{current_item}, longest_word is #{longest_word}"
   i = i + 1
   puts "i was #{i - 1}, now i is #{i}"
 end
 longest_word
end
  
puts longest_string("This is a sentence.")




