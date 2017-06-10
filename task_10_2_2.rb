def binary_guess(chosen_number)
  min = 1
  max = 100
  average = max/2
  steps = 0
  loop do
    if chosen_number > (average)
      answer = "greater"
    elsif chosen_number < (average)
      answer = "less"
    else
      answer = "yes"
    end
    case answer
    when "greater"
      min = average
      average = ((max + min)/2).ceil
    when "less"
      max = average
      average = ((max + min)/2).ceil
    when "yes"
    break
    end
    steps = steps + 1
  end
  return steps
end
def random_guess(chosen_number)
  min = 1
  max = 100
  guessed_number = rand(min..max)
  steps = 0
  loop do
    if chosen_number > guessed_number
      answer = "greater"
    elsif chosen_number < guessed_number
      answer = "less"
    else
      answer = "yes"
    end
    case answer
    when "greater"
      min = guessed_number
      guessed_number = rand(min...max)
    when "less"
      max = guessed_number
      guessed_number = rand(min...max)
    when "yes"
      break
    else
    end
    steps = steps + 1
  end
  return steps
end
guessing_number = rand(1..100)
p "Please enter number of iterations"
number_of_iterations = gets.chomp.to_i
array_of_binary = []
array_of_random = []
number_of_iterations.times do
  guess_with_binary = binary_guess(guessing_number)
  guess_with_random = random_guess(guessing_number)
  array_of_binary.push(guess_with_binary)
  array_of_random.push(guess_with_random)
end
p "Amount of iterations is #{array_of_random.length}"
p "Average value of binary guessing is #{array_of_binary.reduce(:+)/array_of_binary.length}"
p "Average value of random guessing is #{array_of_random.reduce(:+)/array_of_random.length}"
