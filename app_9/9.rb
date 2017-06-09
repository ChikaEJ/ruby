fruits_file = File.open("fruits.txt")
fruit_data = {}
fruits_file.each_line do |line|
  fruit, count = line.split
  fruit_data[fruit] = count
end

fruits_file.close
p fruit_data
