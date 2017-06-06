def array_generator(length_of_array=4)

  generated_array = Array.new
  length_of_array.times do
    number = rand(1..10)
    generated_array.push(number)
  end
end
  r = array_generator()

p r
