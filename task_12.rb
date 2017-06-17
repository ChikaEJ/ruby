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
end#Запись из массива в текстовый файл и пометкой найденного слова
def find_letters(word, letter) #Метод.Найти символы введенные ползователем в искомом слове
  arrey_of_index = (0 ... word.length).find_all do |i|
    word[i] == letter
  end
end
random_word = ""
loop do#Вывод слуйчайного слова из массива с выборкой
  random_word = dictionary_array[rand(0..dictionary_array.size-1)]
  unless random_word.include?("/")
    break
  end
end
p random_word #что бы подсветить искомое слово удалите хеш "#" в начале строки
countdown = random_word.size
word = ("*" * random_word.size)
p word
abc = ("a".."z").to_a.join(" ")
alphabet = ("a".."z")
loop do
  print "=============================================
  \nPlease enter one letter or the whole word: "
  letter = gets.chomp
  count += 1
  if letter.size == 1#Если размер введенного символа равен еденицы.
    if !alphabet.include?(letter)#Если введенный символ не содержится в алфавите от А до Z
      p "You have made a mistake in your input. Please try again."
      count -= 1
    else
      index = 0
      abc.each_char do |charactor|
        if charactor == letter
          abc[index] = "_"
        end
        index += 1
      end
      index_of_letters = find_letters(random_word, letter)
      index_of_letters.each do |index|
        word[index] = letter
      end
      p word
      if !random_word.include?(letter) #Если искомое слово не содержит введенный симол
        p "No, there is no such letter in this word. Your number of tries left: #{countdown -= 1} tries!"
        if countdown == 0
          p "Game over! The word was #{random_word}"
          p abc
          break
        end
      end
      if !word.include?("*") #Если в исмомом слове нет символа "*"
        p "You win! The word was #{random_word}. You won in #{count} tries!"
        write_to_file(dictionary_array, random_word)
        p abc
        break
      end
    end
  elsif letter.size == random_word.size #Если длинна введенного слово ровно длиннее введенного
    if random_word == letter# Если искомое слово идентично введеному
      p "You win! The word was #{random_word}. You won in #{count} tries!"
      p abc
      write_to_file(dictionary_array, random_word)
      break
    else
      p "You have made a mistake in your input. Please try again."
      count -= 1
    end
  else
    p "You have made a mistake in your input. Please try again."
    count -= 1
  end
end
