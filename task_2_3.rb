puts "Welcome to our restaran!"
puts "How can I help ? "
puts "Let me sugest You coffee, tea or сocktail?"
ans = gets.chomp
if ans == "coffee"
  puts "What sort of coffee?"
  ans_cof = gets.chomp
  puts "With milk? (yes, no)"
  ans_milk = gets.chomp
  if ans_milk == "yes"
    ans_milk = "milk"
    puts "With suger ? (yes, no)"
    ans_suger = gets.chomp
    if ans_suger == "yes"
      ans_suger = "suger"
      puts "Let me repeat you order. So your order is #{ans} #{ans_cof} with #{ans_milk} and with #{ans_suger}"
    elsif ans_suger == "no"
      ans_suger = "suger"
      puts "Let me repeat you order. So your order is #{ans} #{ans_cof} with #{ans_milk} and without #{ans_suger}"
    end
  elsif ans_milk == "no"
    ans_milk = "milk"
    puts "With suger ? (yes, no)"
    ans_suger = gets.chomp
    if ans_suger == "yes"
      ans_suger = "suger"
      puts "Let me repeat you order. So your order is #{ans} #{ans_cof} without #{ans_milk} and with #{ans_suger}"
    elsif ans_suger == "no"
      ans_suger = "suger"
      puts "Let me repeat you order. So your order is #{ans} #{ans_cof} without #{ans_milk} and without #{ans_suger}"
    end
  end
elsif ans == "tea"
  puts "What sort of tea?"
  ans_tea = gets.chomp
  puts "With milk? (yes, no)"
  ans_milk = gets.chomp
  if ans_milk == "yes"
    ans_milk = "milk"
    puts "With suger ? (yes, no)"
    ans_suger = gets.chomp
    if ans_suger == "yes"
      ans_suger = "suger"
      puts "Let me repeat you order. So your order is #{ans} #{ans_tea} with #{ans_milk} and with #{ans_suger}"
    elsif ans_suger == "no"
      ans_suger = "suger"
      puts "Let me repeat you order. So your order is #{ans} #{ans_tea} with #{ans_milk} and without #{ans_suger}"
    end
  elsif ans_milk == "no"
    ans_milk = "milk"
    puts "With suger ? (yes, no)"
    ans_suger = gets.chomp
    if ans_suger == "yes"
      ans_suger = "suger"
      puts "Let me repeat you order. So your order is #{ans} #{ans_tea} without #{ans_milk} and with #{ans_suger}"
    elsif ans_suger == "no"
      ans_suger = "suger"
      puts "Let me repeat you order. So your order is #{ans} #{ans_tea} without #{ans_milk} and without #{ans_suger}"
    end
  end


elsif ans == "cocktail"
  puts "Witch cocktail you want? We have Martiny, Mahito, Fizz and daykiri"
  ans_coc = gets.chomp
  puts "Let me repeat you order. So your order is #{ans} #{ans_coc}"
end
