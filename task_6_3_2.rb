def rombs(height)
  height = ((height / 2).ceil)+1
  height.times do |i|
    print " " * (height - i)
    puts "*" * (2 * i + 1)
  end

  length = ((height * 2) - 3)

  (1...height).each do |i|
    print " " * (i + 1)
    puts "*" * (length)
    length = length - 2
  end
end

p "Please enter height of rombs"
height_of_rombs = gets.chomp.to_i

rombs(height_of_rombs)
