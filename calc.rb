puts "Enter A?"
a = gets.chomp.to_i
puts "Enter B?"
b = gets.chomp.to_i
puts "Operator"
operator = gets.chomp

def additional(a, b)
 result =  a + b
  puts "Result of aditional :" + result.to_s
end

def substraction(a, b)
  result = a - b
  puts "Result of substraction:" + result.to_s
end

def multiply(a, b)
  result = a * b
  puts "Result of substraction:" + result.to_s
end

def sq(a, b)
  result = a ** b
  puts "Result of substraction:" + result.to_s
end

if operator == "add"
        additional(a, b)
      elsif operator == "sub"
        result = substraction(a, b)
      elsif operator == "multiply" || operator == "*"
        result = multiply(a, b)
      elsif operator == "sq" || operator == "**"
        result = sq(a, b)
      else
        puts "Wrong command!"
end
