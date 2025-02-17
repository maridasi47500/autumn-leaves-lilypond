# Read the input file
input = File.read("autumn1.ly")

# Extract the relevant section
section = input[/MvmntIVoiceI\s*=\s*{([^}]*)}/m, 1]

# Split the section into lines and process each line
output = section.lines.map do |line|
  # Remove specific elements and numbers with points
  line.gsub("?","").gsub(/\\AutoBarline|\\AutoEndMovementBarline|%?\d{1,2}|%?(\d|\d\.|[1-9][0-9]\.)/, "").strip
end.reject { |line| line.empty? } # Remove empty lines

# Join the processed lines
result = output.join(" ")

# Write the result to a new file
File.write("mesnotes.music", result)

