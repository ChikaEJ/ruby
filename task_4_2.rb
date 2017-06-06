salary = {}
puts "Salary of Timur is : "
salary[:timur] = gets.chomp.to_i
puts "Salary of Zamir is : "
salary[:zamir] = gets.chomp.to_i
puts "Salary of Tilek is : "
salary[:tilek] = gets.chomp.to_i
max_of_salary = salary.values.max
min_of_salary = salary.values.min

puts "differencew of salaries is #{difference_of_salareis = max_of_salary - min_of_salary}"
