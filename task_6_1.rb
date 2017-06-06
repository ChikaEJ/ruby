p "Enter amount of strings"
number_of_string = gets.chomp.to_i

counter = 0
answer = []

while counter < number_of_string do
  p "Enter string number #{counter + 1}"
  string_number = gets.chomp
  answer.push(string_number.capitalize)
  counter += 1
end

answer.each do |i|
    print i
  if i != answer[-1]
    print ", "
  else
    print "\nThe program has finished!"
  end
end
