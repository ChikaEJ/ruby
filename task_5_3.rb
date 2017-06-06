def length_compare(string_1, string_2)
  if string_1.length > string_2.length
    p "First string is longer then second by #{string_1.length - string_2.length} characters"
  elsif string_1.length < string_2.length
    p "Second string is longer then first by #{string_2.length - string_1.length} characters"
  else
    p "String are equal in length"
  end
end

p "Please enter first string"
first_string = gets.chomp

p "Please enter second string"
second_string = gets.chomp

length_compare(first_string, second_string)
