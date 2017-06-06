coordinates = {}

puts "Pleas enter border's coordinates "
coordinates[:borderX] = gets.chomp.to_i
coordinates[:borderY] = gets.chomp.to_i
puts "Pleas enter house's coordinates "

coordinates[:houseX] = gets.chomp.to_i
coordinates[:houseY] = gets.chomp.to_i

if  coordinates[:houseX] > coordinates[:borderX] && coordinates[:houseY] > coordinates[:borderY]
    puts "The house is located in NE Nlogonia "
elsif coordinates[:houseX] < coordinates[:borderX] && coordinates[:houseY] < coordinates[:borderY]
  puts "The house is located in SW Nlogonia "
elsif coordinates[:houseX] > coordinates[:borderX] && coordinates[:houseY] < coordinates[:borderY]
  puts "The house is located in NW Nlogonia "
elsif coordinates[:houseX] > coordinates[:borderX] && coordinates[:houseY] > coordinates[:borderY]
  puts "The house is located in SW Nlogonia "
else
  puts "The house on border"
end
