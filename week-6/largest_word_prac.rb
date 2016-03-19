# largest word method


def largest_word(sentence)
    words = sentence.split(" ")
    largest_word = words[0]
    
    i = 0
    while i < words.length
        current_word = words[i]
        if current_word.length > largest_word.length
            largest_word = current_word
        end
        puts "Current largest word is #{largest_word}"
        i += 1
    end
    largest_word
end    


p largest_word("I am loving my experience in Dev Bootcamp!")

=begin

words.length counts many words are inside words array
sentence.length in this situation would count the number of characters in the string object

=end
