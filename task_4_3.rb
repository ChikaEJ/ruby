puts "Larry's shots is: "
larry_shots = gets.chomp.to_i
puts "Garry's shots is: "
garry_shots = gets.chomp.to_i

cans = (larry_shots + garry_shots)-1

puts "Garry could not get #{cans - garry_shots} cans and Larry could not get #{cans - larry_shots} cans"
