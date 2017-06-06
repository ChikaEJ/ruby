def loops
  p "Please choose way to do this task? ('while', 'until' or 'for')"
  answer = gets.chomp

  if answer == "while" || answer == "1"

    p "You chose 'while'"
    counter = 1
    while counter <= 9
      p "3 * #{counter} = #{3 * counter}"
      counter += 1
    end

  elsif answer == "until" || answer == "2"

    p "You chose 'until'"

    counter = 1
    until counter == 10
    p "3 * #{counter} = #{3 * counter}"
    counter += 1
  end

elsif answer == "for" || answer == "3"

  p "You chose 'for'"
  for i in 1..9
  p "3 * #{i} = #{3 * i}"
end

else
  p "Please enter correct ansewr!"
  loops
end
end

loops
