puts "Please enter how many days from your bithday"
days = gets.chomp.to_i
age = {}
age[:years] = days/360
age[:months] = (days % 360)/30
age[:days] = (days % 360)%30

puts "You are #{age[:years]} years, #{age[:months]} months and #{age[:days]} days old."
