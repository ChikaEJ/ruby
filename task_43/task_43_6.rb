array = [2, 4, 6, 8, 10]
i = 1
b = array[1] - array[0]
boolean = true
(array.count - 2).times do
  if (array[i + 1] - array[i]) != b
    boolean = false
    break
  end
  i += 1
end
  if boolean == true
    puts "This is Arithmetic progression"
  else
    puts "This is NOT Arithmetic progression"
  end
