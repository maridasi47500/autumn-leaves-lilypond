# Open the file in read mode
file_path = 'automne.rythme'
content = File.read(file_path)
new_content = content

# Define the list of musical notes

notes = File.read("mesnotes.music")
# Split the notes into an array
notes_array = notes.split

# Replace each instance of MANIOTE with a note from the array
notes_counter = 0

# Regular expression to match the relevant sections and notes
pattern = /MvmntIVoiceI\s*=\s*\{(.*?)\}%fin ici/m


new_content = new_content.gsub(pattern) do |match|
  p "vbnh,"
  inner_content = $1
  updated_inner_content = inner_content
  patterns = [
    /\b(?<!AutoBarline|tuplet|partial|AutoEndMovementBarline)([a-g](es|is)\\'{4})\b/,
    /\b(?<!AutoBarline|tuplet|partial|AutoEndMovementBarline)([a-g](es|is)\\'{3})\b/,
    /\b(?<!AutoBarline|tuplet|partial|AutoEndMovementBarline)([a-g](es|is)\\'{2})\b/,
    /\b(?<!AutoBarline|tuplet|partial|AutoEndMovementBarline)([a-g](es|is)\\'{1})\b/,
    /\b(?<!AutoBarline|tuplet|partial|AutoEndMovementBarline)([a-g]\\'{4})\b/,
    /\b(?<!AutoBarline|tuplet|partial|AutoEndMovementBarline)([a-g]\\'{3})\b/,
    /\b(?<!AutoBarline|tuplet|partial|AutoEndMovementBarline)([a-g]\\'{2})\b/,
    /\b(?<!AutoBarline|tuplet|partial|AutoEndMovementBarline)([a-g]\\'{1})\b/,
    /\b(?<!AutoBarline|tuplet|partial|AutoEndMovementBarline)([a-g](es|is))\b/,
    /(?<!AutoBarline|tuplet|partial|AutoEndMovementBarline)([a-g](es|is))/,
    /\b(?<!AutoBarline|tuplet|partial|AutoEndMovementBarline)([a-g])\b/
  ]
  patterns.each do |pattern1|
    p pattern1

    updated_inner_content = updated_inner_content.gsub(pattern1) do |note|
      replacement ="Manote"
      notes_counter += 1
      replacement
    end

  end
  "MvmntIVoiceI = {\n#{updated_inner_content}\n}%fin ici"
end
while new_content.include?("ManoteManote") do
  new_content=new_content.gsub('ManoteManote','Manote')
end

while new_content.include?("Manote'") do
  new_content=new_content.gsub("Manote'",'Manote')
end
# Write the updated content back to the file
File.open("c.lerythme", 'w') { |file| file.write(new_content) }

puts "The content has been updated successfully!"

