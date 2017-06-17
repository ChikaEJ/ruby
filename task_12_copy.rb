dictionary = File.new("dictionary.txt")
dictionary_array = []
count = 0
dictionary.each_line do |word|
  dictionary_array.push(word.gsub("\n", ""))
end
def write_to_file(array_of_words, guessed_word)
  dictionary_file = File.open("dictionary.txt", "w")
  array_of_words.each do |word|
    if word == guessed_word
      dictionary_file.write("/" + word + "\n")
    else
      dictionary_file.write(word + "\n")
    end
  end
  dictionary_file.close
end
random_word = ""
loop do
  random_word = dictionary_array[rand(0..dictionary_array.size-1)]
  unless random_word.include?("/")
    break
  end
end
countdown = random_word.size
p word = ("*" * random_word.size)
abc = ("a".."z").to_a.join(" ")
alphabet = ("a".."z")
loop do
  p "Please enter letter: "
  letter = gets.chomp
  unless alphabet.include?(letter)# or letter.size == random_word.size
    p "You have made a mistake in your input. Please try again."
  else
    index = 0
    count += 1
    abc.each_char do |charactor|
      if charactor == letter
        abc[index] = "_"
      end
      index += 1
    end
    if random_word == letter
      p "You win! The word was #{random_word}. You won in #{count} tries!"
      p abc
      write_to_file(dictionary_array, random_word)
      break
    end
    index_of_letters = find_letters(random_word, letter)
    index_of_letters.each do |index|
      word[index] = letter
    end
    p word
    if !random_word.include?(letter)
      p "No, there is no such letter in this word. Your nuber of tries left: #{countdown -= 1} tries!"
      if countdown == 0
        p "Game over! The word was #{random_word}"
        p abc
        break
      end
    end
    if !word.include?("*")
      p "You win! The word was #{random_word}. You won in #{count} tries!"
      write_to_file(dictionary_array, random_word)
      p abc
      break
    end
  end
end
