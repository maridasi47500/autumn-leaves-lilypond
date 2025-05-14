# Open the file in read mode
la_partition = 'c.ki'
file_path = 'c.lerythme'
filewow = 'mesnotes.music'
content = File.read(file_path)

# Define the list of musical notes




def remove_newlines(string)
  string.gsub(/\n/, ' ')
end

notes = remove_newlines(File.read(filewow).strip).split(" ")
p notes
p notes.length

def transpose_notes(notes, interval)
  note_map = {
      "c" => 0, "cis" => 1, "des" => 1, "d" => 2, "dis" => 3, "ees" => 3, "e" => 4, "eis" => 5, "fes" => 4, "f" => 5, "fis" => 6,
      "ges" => 6, "g" => 7, "gis" => 8, "aes" => 8, "a" => 9, "ais" => 10, "bes" => 10, "b" => 11, "bis" => 12, "ces" => 11,
      "c'" => 12, "cis'" => 13, "des'" => 13, "d'" => 14, "dis'" => 15, "ees'" => 15, "e'" => 16, "eis'" => 17, "fes'" => 16, "f'" => 17, "fis'" => 18,
      "ges'" => 18, "g'" => 19, "gis'" => 20, "aes'" => 20, "a'" => 21, "ais'" => 22, "bes'" => 22, "b'" => 23, "bis'" => 24, "ces'" => 23,
      "c''" => 24, "cis''" => 25, "des''" => 25, "d''" => 26, "dis''" => 27, "ees''" => 27, "e''" => 28, "eis''" => 29, "fes''" => 28, "f''" => 29, "fis''" => 30,
      "ges''" => 30, "g''" => 31, "gis''" => 32, "aes''" => 32, "a''" => 33, "ais''" => 34, "bes''" => 34, "b''" => 35, "bis''" => 36, "ces''" => 35,
      "c'''" => 36, "cis'''" => 37, "des'''" => 37, "d'''" => 38, "dis'''" => 39, "ees'''" => 39, "e'''" => 40, "eis'''" => 41, "fes'''" => 40, "f'''" => 41, "fis'''" => 42,
      "ges'''" => 42, "g'''" => 43, "gis'''" => 44, "aes'''" => 44, "a'''" => 45, "ais'''" => 46, "bes'''" => 46, "b'''" => 47, "bis'''" => 48, "ces'''" => 47,
      "c''''" => 48, "cis''''" => 49, "des''''" => 49, "d''''" => 50, "dis''''" => 51, "ees''''" => 51, "e''''" => 52, "eis''''" => 53, "fes''''" => 52, "f''''" => 53, "fis''''" => 54,
      "ges''''" => 54, "g''''" => 55, "gis''''" => 56, "aes''''" => 56, "a''''" => 57, "ais''''" => 58, "bes''''" => 58, "b''''" => 59, "bis''''" => 60, "ces''''" => 59
  }






  reverse_note_map = note_map.invert
  #p reverse_note_map

  transposed_notes = notes.map do |note|
    #p note

    midi_value = note_map[note]
    transposed_value = (midi_value + interval) % 60
    transposed_note = reverse_note_map[transposed_value]

    p note+" "+transposed_note+(note == transposed_note ? " ! salut " : "")
    
    transposed_note

  end

  transposed_notes
end

interval = ARGV[0].to_i
notes_array = notes
if interval != 0
  all_transposed_notes = transpose_notes(notes_array, interval)
else
  all_transposed_notes = notes_array
end

p "all transpoded notes"
p all_transposed_notes.length
p all_transposed_notes



# Split the notes into an array


# Replace each instance of MANIOTE with a note from the array
notes_counter = 0
new_content = content.gsub('Manote') do
  #note = all_transposed_notes[notes_counter % notes_array.length]
  note = all_transposed_notes[notes_counter]
  notes_counter += 1
  #p note
  note
end

# Write the updated content back to the file
File.open(la_partition, 'w') { |file| file.write(new_content) }

puts "The content has been updated successfully!"

