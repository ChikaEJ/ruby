
dragon = {
  hp: 2000,
  defense: 120,
  str: 150,
  weapon: 0,
  shield: 0
}
hero = {
  hp: 1000,
  defense: 100,
  str: 120,
  weapon: 250,
  shield: 150
}
helldog = {
  hp: 2000,
  defense: 120,
  str: 150,
  weapon: 0,
  shield: 0
}
def dragon_atack(hero_two, hero_one, name_of_hero1, name_of_hero2)
  if hero_two[:hp] > 1
    hit_or_not = rand(20)
    if hit_or_not < 10

      p "#{name_of_hero1} is on atack to #{name_of_hero2}"
      hero_life = hero_two[:str] + hero_two[:weapon] - hero_one[:defense]
      hero_one[:hp] = hero_one[:hp] - hero_life
      p "#{name_of_hero2} was hited by #{name_of_hero1} and take #{hero_life} of his life. Hp left #{hero_one[:hp]}"
      p "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
      print "\n"

      if hero_one[:hp] < 1
        p "#{name_of_hero2} was killed by #{name_of_hero1}"
        #break if hero[:hp] < 1
      else
        p "But the #{name_of_hero2} still on the mood to kill the #{name_of_hero1}!"
        p "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
        print "\n"
      end

    else
      p "#{name_of_hero1} is too lasy to atack #{name_of_hero2} now! It #{name_of_hero2}'s chance to kill him!"
      p "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
      print "\n"
    end
  end
return hero_two, hero_one
end

def hero_atack(hero_one, hero_two, name_of_hero1, name_of_hero2)
  hero_two_aim = (1..75)
  hero_atack = rand(100)
  if hero_two_aim.include?(hero_atack)
    hero_two_life = hero_one[:str] + hero_one[:weapon] - hero_two[:defense]
    hero_two[:hp] = hero_two[:hp] - hero_two_life
    p "#{name_of_hero1} hited #{name_of_hero2} with weapon on his head and his aye was smashed"
    p "#{name_of_hero2} health left only #{hero_two[:hp]}"
    p "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    print "\n"
    if hero_two[:hp] < 1
      p "#{name_of_hero2} is dead! #{name_of_hero1} win with #{hero_one[:hp]}"
      #break if hero_two[:hp] < 1
    elsif hero_two[:hp] < 100 && hero_two[:hp] > 1
      p "Dragon almost dead try harder and he will die. His health only #{hero_two[:hp]} left"
      p "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
      print "\n"
    end


  else
    p "#{name_of_hero2} too fast and hero mist the shot"
    p "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    print "\n"
  end
  return hero_one, hero_two
end

p "Please choose the role you want to play (Dragom, Hero, Helldog)"
role = gets.chomp.downcase
if role == "hero"
  role_one = hero
  roles = [dragon, helldog]
  role_two = roles[rand(0..1)]
  if role_two[0]
    name_role_two = "Dragon"
    p name_role_two
  else
    name_role_two = "Helldog"
    p name_role_two
  end
elsif role == "dragon"
  role_one = dragon
  roles = [hero, helldog]
  role_two = roles[rand(0..1)]
  if role_two[0]
    name_role_two = "Hero"
    p name_role_two
  else
    name_role_two = "Helldog"
    p name_role_two
  end
elsif role == "helldog"
  role_one = helldog
  roles = [dragon, hero]
  role_two = roles[rand(0..1)]
  if role_two[0]
    name_role_two = "Dragon"
    p name_role_two
  else
    name_role_two = "Hero"
    p name_role_two
  end
end


loop do
  role_one[:defense] = role_one[:defense] - role_one[:shield]

  p "Please enter action"
  action = gets.chomp
  case action
  when "atack"

    hero_atack(role_one, role_two, role.capitalize, name_role_two)
    if role_two[:hp] < 1
      break
    end
    dragon_atack(role_two, role_one, name_role_two, role.capitalize)
    if hero[:hp] < 1
      break
    end
  when "not atack"
    p "Hero is too kind to atack Dragon"
    p "+++++++++++++++++++++++++++++++++++++++++++++"
    print "\n"
  when "shield"
    role_one[:defense] = role_one[:defense] + role_one[:shield]
    p "#{role.capitalize} take a shield and defense him self. Defense now is #{hero[:defense]}"
  else
    p "Wrong commad!!!"
    print "\n"
  end
end
