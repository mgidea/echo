statements = []
puts "what do you want to say?"
print "> "
reply = gets.chomp
  if reply == 'Nothing!'
    puts "Ok, fine!"
  elsif reply == 'I have a lot to say'
    puts "Ok, let's hear it!"
    until statements.include?("done")
     statements << gets.chomp
    end
      statements.pop
      statements.each_with_index do |statement, index|
        if index == 0
          puts "You said: #{statement}"
        elsif index == statements.size - 1
          puts "Finally you said: #{statement}"
        else
          puts "Then, you said: #{statement}"
        end
      end
      puts "Phew! Glad you got all #{statements.size} of those things off your chest!"

  else
    puts "You said: #{reply}"
  end


# def playback response
#   puts "You said: #{response}"
# end
# statement = "Sally sells seashells"
# playback(statement)

