p "How many is #{first_entered_number = rand(9)} * #{second_entered_number = rand(9)} ?"
answer = gets.chomp.to_i

if answer == (first_entered_number * second_entered_number)
  p "You are correct."
else
  p "You are wrong! Correct answer is #{first_entered_number} * #{second_entered_number} = #{first_entered_number * second_entered_number}"
end
