puts 'Enter number A: '
a = gets.chomp.to_i
puts 'Enter nubmer N: '
n = gets.chomp.to_i
c = 0
i = 1
n.times do
  b = i * a
  c += b
  i += 1
end
puts c
