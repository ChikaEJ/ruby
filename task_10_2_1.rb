def binary_guess(min, max)
  cpu_chosen_number = rand(min..max)
  p "CPU chosen number is #{cpu_chosen_number}"
  average = max/2
  steps = 0
  p "Is your number #{average}?"
  loop do

    if cpu_chosen_number > (average)
      answer = "greater"
      p "Greater"
    elsif cpu_chosen_number < (average)
      answer = "less"
      p "Less"
    else
      answer = "yes"
      p "Yea!!! You good!!!"
    end

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
      p "Great! Number hes guessed in #{steps} steps!"
      p "++++++++++++++++++++++++++++++++++++++++++++"
    break
    end
    steps = steps + 1
  end
end
def random_guess(min, max)
  cpu_chosen_number = rand(min..max)
  guessed_number = rand(min..max)
  steps = 0
  p "CPU chosen number is #{cpu_chosen_number}"
  #p "Is your number #{guessed_number}?"
  loop do
    if cpu_chosen_number > guessed_number
      answer = "greater"
      p "Greater"
    elsif cpu_chosen_number < guessed_number
      answer = "less"
      p "Less"
    else
      answer = "yes"
      p "Yea!!! You'r good!!!"
    end

    case answer
    when "greater"
      min = guessed_number
      guessed_number = rand(min...max)
      puts "Is your number #{guessed_number}"
    when "less"
      max = guessed_number
      guessed_number = rand(min...max)
      p "Is your number #{guessed_number}?"
    when "yes"
      puts "Great! The number hes guessed in only #{steps} steps!"
      p "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
      break
    end
    steps = steps + 1
  end

end
binary_guess(1, 100)
random_guess(1, 100)
