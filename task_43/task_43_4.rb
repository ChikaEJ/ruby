array = [2, 4, 3, 4, 56, 32, 54]
i = 0
max_value = array.max
array.length.times do
  if array[i] == max_value
    puts i
  end
  i += 1
end
