
# this method takes all user notes on same line
def get_notes 
    puts "Enter your notes"
    notes = gets
    notes = notes.split(" ")
    notes = notes.map(&:to_i)
end

# this method calcul average of notes
def get_average notes
    return notes.reduce(:+) / notes.length
end

puts get_average(get_notes())