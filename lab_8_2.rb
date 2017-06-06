min = 1
max = 100
average = 50
steps = 0
p "Keep in your mind some number from 1 to 100!"
gets.chomp
p "Is your number #{average}?"
loop do

  answer = gets.chomp
  case answer
  when "greater"
    min = average
    average = ((max + min)/2).ceil
    p "Is your number #{average}?"

  when "less"
    max = average
    average = ((max + min)/2).ceil
    p "Is your number #{average}?"

  when "yes"
    p "Great! I guessed in #{steps} steps!"
  break
  end
  steps = steps + 1
end
