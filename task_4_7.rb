puts "Please enter two numbers "
number_1 = gets.chomp.to_i
number_2 = gets.chomp.to_i
relationship = {}

if number_1 > number_2
  relationship[:max] = number_1
  relationship[:min] = number_2
else
  relationship[:max] = number_2
  relationship[:min] = number_1
end
relationship[:medium] = (number_1 + number_2)/2

puts relationship
