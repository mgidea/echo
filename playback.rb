puts "what do you want to say?"
print "> "
reply = gets.chomp
  if reply == 'Nothing!'
    puts "Ok, fine!"
  elsif reply == 'I have a lot to say'
    puts "I don't have time for that right now!"
  else
    puts "You said: #{reply}"
  end


# def playback response
#   puts "You said: #{response}"
# end
# statement = "Sally sells seashells"
# playback(statement)

