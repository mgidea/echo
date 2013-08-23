statements = []
puts "what do you want to say?"
print "> "
reply = gets.chomp

if reply == "I have something prepared"
  puts "Ok, where can I find what you want to say?"
    your_file = gets.chomp
  File.open(your_file, 'r').each_line do |line|
    statements << line
    end
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


end


