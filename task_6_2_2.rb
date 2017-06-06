first_array = [ "the", "one", "two", "table", "best", "car", "ruby", "ruby_on_rails"]
second_array = ["the", "five", "one", "best", "language", "ruby_on_rails", "ruby"]
third_array = []
p first_array, second_array

first_array.each do |i1|
  second_array.each do |i2|
    if i1 == i2
      third_array.push(i1)
    end
  end
end
p "#{third_array.join(", ")}"
