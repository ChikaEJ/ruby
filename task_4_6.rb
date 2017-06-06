radius = [12, 356, 4]

def square(r)
  square = 2*3.14 * r ** 2
end
squares = []
squares.push(square(radius[0]).to_i)
squares.push(square(radius[1]).to_i)
squares.push(square(radius[2]).to_i)

puts "Squares is : #{squares}"
