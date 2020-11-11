
puts "Enter a word"
word = gets.chomp

# verify if the word is equal to the reverse same word
def is_palindrome word
    return word.downcase == word.reverse.downcase
end

# show result of def is_palindrome
def show_result word
    if is_palindrome(word)
        puts "The word " + word + " is a palindrome"
    else
        puts "Le mot " + word + " is not a palindrome"
    end
end

show_result(word)