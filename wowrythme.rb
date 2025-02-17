# Open the file in read mode
file_path = 'automne.rythme'
content = File.read(file_path)
new_content = content

# Define the list of musical notes
notes = %(g' g' a' bes' ees'' f' g' g' f' e' f' d' d'' f'' d' bes' a' g' bes' bes' d'' c'' bes' ees'' c'' bes' a' g' fis' d'' c'' a' bes' c'' a' bes' g' d c b d f' b' d'' a'' g'' d'' f'' ees'' c' g' d'' c'' d'' c'' c'' ees' ees' fis' a' f'' d'' a' f' ees' ees' c'' d'' c'' c'' ees' ees' fis' a' fis'' d'' a' g' ees' d' c'' a' bes' f'' d'' ees'' g'' bes'' d''' c''' bes'' g'' ees'' d'' f'' ees'' d'' bes' g' ees' d b' c'' ees'' g'' bes'' d''' bes'' c''' c''' bes'' c''' a'' g'' fis'' ees'' d'' c'' bes' a' a' d'' g' bes' a' g' d' g' a' bes' a' bes' a' g' d'' f'' ees'' f'' ees'' d'' ees' d' ees'' d'' ees''' d''' c''' d''' d''' c''' bes'' a'' bes'' c''' cis''' d''' d'' a'' g'' d'' d'' a' g'' ges'' f'' ees'' d'' c'' ces'' a' bes' a' g' ees' d' f' d' ees' g' bes' d'' b' c'' ees'' g'' ees'' c' g' bes' g' bes'? g' a' d'' ees'' f'' a'' g'' ges'' e'' f'' f' g' a' bes' c'' d'' ees'' f'' ges'' f'' f'' d'' c'' bes' a' c'' ges' ges' f' d g'? bes' a' d'' c'' a' f'' ees'' f'' d'' c'' bes' a' ges' f' ees' d' c' d' g' g' bes' bes' d'' ees'' bes'' d''' bes'' g'' ees'' c''' bes'' c''' bes'' g'' ees'' d'' c'' f'' ees'' d'' ees'' g'' bes'' fis'' a'' f'' f'' c'' f'' d'' c'' bes' a' g' d' g' c'' d'' ees'' f'' g'' g' ees'' fis' a' fis'' a'' g'' d'' f'' d'' a' a' f' d' f' f' f' d' f' g' c'' g' bes' d'' d'' d'' fis' f' f'' f'' fis'' d''' c''' c''' bes'' a'' g'' a'' fis'' a'' g'' d'' bes' g'' f'' ees'' d'' ees'' d'' c'' bes' a' g' ees' d' b c' ees' g' bes' d' ees' ges' a' d'' f'' ges' a'' d''' f'' ges'' a'' d''' a'' c''' c''' a'' c''' bes'' ees'' g'' f'' cis' ees'' d'' a' c'' bes' d'' f'' ees'' f' a' c'' bes' g' d'' bes f' ees' d' fis' a' c'' fis'' ees'' d'' c'' bes' ges' f' ees' d' ees' g' a' bes' a' g' a' bes' a' g' ees'' bes' g' ees' d' ees' d' f' a' c' f'' ees'' d'' ees'' d''' d'' ees'' c''' c''' bes'' a'' g'' fis''' d'' a'' g'' d'' g'' a'' g'' ges'' f'' ees'' d'' c'' b' f' a' g' f' ees' d' f' d' ees' g' bes' f' ees' d' ees' g' bes' d'' b' c'' d'' ees'' f'' ees'' c'' a' ces' a' ges' f' ees' d' c' bes d f' c'' a' bes' d'' f'' a'' bes'' c''' d''' d''' c''' bes'' a'' g'' f'' ees'' d'' g'' d'' d'' c'' c'' g' f' c' g' f' d' c' d'' ees'' fis'' g'' a'' bes'' c''' d''' ees''' d''' d''' c''' bes'' a'' g'' ges'' ees'' d'' a'' g'' d'' g'' a'' g'' ges'' e'' f'' e'' d'' ees'' d'' c'' b' a' bes'? a')

# Split the notes into an array
notes_array = notes.split

# Replace each instance of MANIOTE with a note from the array
notes_counter = 0
new_content = new_content.gsub(/(?!AutoBarline|tuplet)([abcdefg'])/) do |match|
  replacement = notes_array[notes_counter % notes_array.size]
  notes_counter += 1
  replacement
end
while new_content.include?("##") do
  new_content=new_content.gsub('##','#')
end

new_content=new_content.gsub('#','Manote')
# Write the updated content back to the file
File.open(file_path, 'w') { |file| file.write(new_content) }

puts "The content has been updated successfully!"

