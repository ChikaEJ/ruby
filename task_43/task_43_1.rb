array_hight = [156, 134, 234, 167]
array_lastname = ["Ivanov", "Sidorov", "Petrov", "Fomin"]
i = 0
highest = 0
index = 0
(array_hight.count - 1).times do
  if array_hight[i] > array_hight[i + 1]
    highest = array_hight[i]
    index = i
  else
    highest = array_hight[i + 1]
    index = i + 1
  end
  i += 1
end

puts highest
puts index
puts array_lastname[2]
