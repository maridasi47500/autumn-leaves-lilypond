# Read the input file
input = File.read(ARGV[0])

# Extract the relevant section
#section = input[/MvmntIVoiceI\s*=\s*{([^}]*)}/m, 1]
#section = input[/\{([^}]*)\}%fin ici/, 1]
section = input[/MvmntIVoiceI\s*=\s*\{(.*?)\}%fin ici/m, 1]



# Split the section into lines and process each line
lines = section.lines.map do |line|
  # Remove specific elements and numbers with points
  p "avant:"+line

  if line.include?("tuplet")
    line=line.gsub(/\s*\\tuplet 3\/2\s*/, " ").strip
    line=line.gsub(/[{}]/, " ").strip
  end
  p "après:"+line
  line



end.reject { |line| line.empty? } # Remove empty lines
p "salut hzhz"
output = lines.map do |line|
  # Remove specific elements and numbers with points
  p "avant"+line

  line=line.gsub(/~/, " ").strip
  line=line.gsub("?"," ").gsub(/\\AutoBarline|\\AutoEndMovementBarline|%?\d{1,2}|%?(\d|\d\.|[1-9][0-9]\.)/, " ").gsub(/\br\d+/, " ").gsub(/ r /, " ").strip
  line=line.gsub("\\partial", " ").strip
  line=line.gsub("*", " ").strip
  line=line.gsub(".", " ").strip
  line=line.gsub("r", " ").strip
  p "après:"+line
  line
rescue => e
  p "erreur"+e.message.to_s
end.reject { |line| line.empty? } # Remove empty lines
p "salut ça va"

# Join the processed lines
result = output.join(" ")
while result.include?("r") do
  result=result.gsub("r"," ")
end
while result.include?("  ") do
  result=result.gsub("  "," ")
end

# Write the result to a new file
File.write("mesnotes.music", result)

p "finish"
