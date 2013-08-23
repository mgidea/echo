count = {}
puts "What do you want to say?"
print "> "
response = gets.chomp
puts "You said: #{response}"

letters = response.split(//)

letters.each do |letter|
  unless count.has_key?(letter)
    count[letter] = 0
  end

  count[letter] += 1
end

var = count.values.sort[-2]
second_letter = count.key(var)

puts "'#{second_letter}' is the second most used character in what you said"
puts "'#{second_letter}' was used a total of #{var} times"
