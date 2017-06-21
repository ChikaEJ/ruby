vocabular_file = File.open("vocabulary.txt")
vocabular_array = []
vocabular_file.each_line do |word|
 vocabular_array.push word.split
end
vocabular_file.close
hidden_word = vocabular_array.sample
puts hidden_word
length = hidden_word[0].length
result_string = '*' * length
result_string = result_string.split("")
alfavit = ("a".."z").to_a
puts "Please guess the word " + '*'* length
try = 0
loop do
 if try < 7
  if result_string.include? "*"
   puts "Please enter letter or guess the word:"
   guessed_string = gets.chomp
   # guessed_string = guessed_string.split("")
   hidden_word.each do |letter|
    puts hidden_word, guessed_string, result_string
    if hidden_word.include? guessed_string
      puts "There is such letter in the word"
      item = hidden_word.index(guessed_string)
      puts item
      result_string[item] = guessed_string
      puts result_string
      alfavit[alfavit.index(guessed_string)] = "_"
    else
     try +=1
    end
   end
  else
   puts "Congratulations you win the game!"
  end
 else
  puts "You loose the game"
 end
end
