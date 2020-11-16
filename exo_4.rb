

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


#### Variante 1

# # this method takes all user notes on same line
# def get_notes 
#     puts "Enter your notes"
#     notes = gets
#     notes = notes.split(" ")
#     notes = notes.map(&:to_i)
# end

# # this method calcul average of notes
# def get_average notes
#     return notes.reduce(:+) / notes.length
# end

# puts get_average(get_notes())





#### Variante 2



# # this method takes all user notes until he writes "STOP"
# # and take on how much he want his average

# def get_note
#     puts "Enter your notes like: 'note on_how_much'"

#     notes = []
#     stop = false
#     while !stop
#         note = gets.chomp
#         if note == "STOP"
#             stop = true
#         else
#             note = note.split(" ")
#             notes.push([note[0].to_i, note[1].to_i])
#         end
#     end

#     puts "Enter on how much you want you average:"
#     on_how_much = gets.to_i

#     return [notes, on_how_much]
# end

# # this method calcul the average depending on how many they are and on how much they are going to be
# def get_average notes
#     notes_parsed = []

#     notes[0].each do |note|
#         notes_parsed.push(note[0] * notes[1] / note[1])
#     end

#     return notes_parsed.reduce(:+) / notes_parsed.length
# end


# user_notes = get_note()
# average_result = get_average(user_notes)

# puts "You enter " + user_notes[0].length.to_s + " note(s)"
# print "The average on " + user_notes[1].to_s + " is: "
# print average_result

