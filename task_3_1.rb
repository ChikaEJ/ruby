puts "What is your name? "
name = gets.chomp.capitalize

puts "What is your last name? "
last_name = gets.chomp.capitalize

puts "When were you born ? "
year_of_born = gets.chomp.to_i

puts "Where are your from? "
location = gets.chomp.capitalize

def age(a)
  age = 2015 - a
  #puts "You are #{age.to_s} years old."
end

puts "Hello, #{name + " "+ last_name}. You are #{age(year_of_born)} years old. You are living in #{location}."
#puts "Hello, #{name + " "+ last_name}. #{age(year_of_born)} You are living in #{location}."
