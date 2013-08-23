  puts "what do you want to say?"
  print "> "
  reply = gets.chomp
  puts "#{reply}"
  puts "You said: #{reply}"

def playback response
  puts "You said: #{response}"
end
statement = "Sally sells seashells"
playback(statement)
