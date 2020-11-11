puts "Enter a word or a sentence"
sentence = gets.chomp.tr('^a-z', '') 

def get_weight_of_word sentence
    sum = 0
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    
    sentence.delete(' ').split("").each do |i|
        letter_index = alphabet.index("#{i}").to_i + 1
        if letter_index > 9
            weight = letter_index.to_s.split("").map(&:to_i).reduce(:+)
        else
            weight = letter_index
        end
        sum += weight.to_i
    end
    return sum
end

puts get_weight_of_word(sentence)

