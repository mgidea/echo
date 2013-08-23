statements = []

def puts_ordered_statements(statements)
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

def check_valid_file(file)
  while File.file?(file) == false
    puts "I couldn't find that file"
    puts "Where can I find what you want to say?"
    file = gets.chomp
  end
end

puts "what do you want to say?"
print "> "
reply = gets.chomp
case reply
when 'Nothing!'
  puts "Ok, fine!"
when 'I have a lot to say'
  puts "Ok, let's hear it!"
  until statements.include?("done")
    statements << gets.chomp
  end
  statements.pop
  puts_ordered_statements(statements)
when "I have something prepared"
  puts "Ok, where can I find what you want to say?"
  your_file = gets.chomp

  check_valid_file(your_file)

  File.open(your_file, 'r').each_line do |line|
    statements << line
  end
  puts_ordered_statements(statements)
else
  puts "You said: #{reply}"
end



