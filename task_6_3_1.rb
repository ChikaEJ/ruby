def pyramid(height)
  height.times do |i|
    print " " * (height - i)
    puts "*" * (2 * i + 1)
  end
end

p "Please enter height of pyramid"
height_of_pyramid = gets.chomp.to_i

pyramid(height_of_pyramid)
