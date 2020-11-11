
print "Enter your Name: "
name = gets.chomp.to_s.downcase

print "Enter your Nickname: "
nickname = gets.chomp.to_s.downcase

# this method returns a sentence according to the given parameters
def say_hello (name, nickname)
    if name && nickname
        return 'Bonjour ' + name.capitalize 
    elsif name
        return 'Bonjour ' + name
    elsif nickname
        return 'Hello ' + nickname
    else
        return
    end
end

puts say_hello(name, nickname)