statements.each do |index|
  if index[0]
    puts "You said: #{index}"
  elsif index[-1]
    puts "Finally you said: #{index}"
  else
    puts "Then, you said: #{index}"
  end
end

