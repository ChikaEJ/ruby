#first_array = [1, 2, 3, 4, 5]
#second_array = [3, 4, 5, 6, 7]
first_array = []
second_array = []
third_array = []

length_of_arrays = rand(5..10)

length_of_arrays.times do
  number1 = rand(1..10)
  first_array.push(number1)
  number2 = rand(1..10)
  second_array.push(number2)
end

p first_array, second_array

first_array.each do |i1|
  second_array.each do |i2|
    if i1 == i2
      third_array.push(i1)
    end
  end
end
print  "\n#{third_array.join(", ")}\n\n"
