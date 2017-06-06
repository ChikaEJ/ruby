ai = [3, 54, 65, 45, 56, 35, 76, 48, 23]
bi = [5, 6, 76, 45, 76, 89, 54, 56, 90]
puts "Enter 10's element of A array "
ai[9] = gets.chomp.to_i
puts "Enter 10's element of bi array "
bi[9] = gets.chomp.to_i
ci = ai + bi
i = 0
a = 0
while i < (ci.size - 1)

  if ci[i] > a
    a = ci[i]
  end
i = i + 1
end
puts "Array A is :#{ai}.\nArray B is :#{bi}\nArray C is :#{ci}"
puts "Max=#{a}\nMin= #{ci[-3..-1].min}"
