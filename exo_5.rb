puts "Enter a word or a sentence"
sentence = gets.chomp.tr('^a-z', '') 

def get_weight_of_word sentence
    sum = 0
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    
    # Walk through each letter of the sentence
    sentence.split("").each do |i|
        # calculation of the weight of each letter according to the index in the alphabet
        letter_index = alphabet.index("#{i}").to_i + 1

        # sum of digits of numbers
        if letter_index > 9 && letter_index < 20
            weight = letter_index - 9
        elsif letter_index >= 20
            weight = letter_index - 18
        else
            weight = letter_index
        end
        
        sum += weight.to_i
    end
    return sum
end

puts "the weight of your sentence is: " + get_weight_of_word(sentence).to_s

