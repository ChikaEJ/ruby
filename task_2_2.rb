puts "Please enter integer number (a): "
a = gets.chomp.to_i
puts "Please enter integer number (b): "
b = gets.chomp.to_i
puts "Please enter integer number (c): "
c = gets.chomp.to_i
def form(a, b, c)
  a * (b + c)
end
result = form(a, b, c)
puts "You result is #{result}!"
