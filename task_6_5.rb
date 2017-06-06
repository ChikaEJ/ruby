p "Please enter first sentence"
first_sentence = gets.chomp

p "Please enter second sentence"
second_sentence = gets.chomp

same_words = first_sentence.split & second_sentence.split

p same_words.join(", ")
