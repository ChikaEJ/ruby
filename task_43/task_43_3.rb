puts 'Enter some string'
string_firt = gets.chomp.to_s
puts 'Enter some string'
string_second = gets.chomp.to_s

count = 0
i = 0
string_firt.length.times do
  if string_firt[i] == string_second[i]
    count += 1
  else
    break
  end
  i += 1
end
puts "same characters amount is: " + count.to_s
