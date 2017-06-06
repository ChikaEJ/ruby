grades = Hash.new

puts "Enter grade for Jake:"
grades[:jake] = gets.chomp.to_f

puts "Enter grade for John:"
grades[:john] = gets.chomp.to_f

puts "Enter grade for Jane:"
grades[:jane] = gets.chomp.to_f

puts "Enter grade for Jack:"
grades[:jack] = gets.chomp.to_f

puts "Mean for grades is #{((grades[:jake] + grades[:john] + grades[:jane] + grades[:jack])/grades.size).ceil}"
