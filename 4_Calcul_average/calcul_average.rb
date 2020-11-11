

# this method takes all user notes until he writes "STOP"
def get_note
    puts "Enter your notes"

    notes = []
    stop = false
    while !stop
        note = gets.chomp
        if note == "STOP"
            stop = true
        else
            notes.push(note.to_i)
        end
    end
    return notes
end

# this method calcul average of notes
def get_average notes
    return notes.reduce(:+) / notes.length
end

puts get_average(get_note())

