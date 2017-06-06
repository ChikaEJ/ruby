number = rand(100)
min = 1
max = 100
steps = 0
p "Keep in your mind some number from 1 to 100!"
gets.chomp
p "Is your number #{number}?"
loop do

answer = gets.chomp
if answer == "greater"
  min = number
  number = rand(min...max)
  puts "Is your number #{number}"
elsif answer == "less"
  max = number
  number = rand(min...max)
  p "Is your number #{number}?"
elsif answer == "yes"
  puts "Great! I guessed in only #{steps} steps!"
  break
end
steps = steps + 1
end
