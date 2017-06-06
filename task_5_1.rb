p "Please enter first number "
first_number = gets.chomp.to_i

p "Please enter second number "
second_number = gets.chomp.to_i

puts "Your random number is : #{rand(first_number..second_number)}"
