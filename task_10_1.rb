weapons = {
  "stone" => ['lizzard', 'scissors'],
  "paper" => ['stone', 'spoke'],
  "scissors" => ['paper', 'lizzard'],
  "lizzard" => ['spoke', 'paper'],
  "spoke" => ['scissors', 'stone']
}
small_game_weapons = {
  "stone" => ['scissors'],
  "paper" => ['stone'],
  "scissors" => ['paper']
}
def cpu_chose(weapons)
      cpu_chose = rand(1..weapons.length)
      if cpu_chose == 1
        cpu_unit = weapons["stone"]
      elsif cpu_chose == 2
        cpu_unit = weapons["paper"]
      elsif cpu_chose == 3
        cpu_unit = weapons["scissors"]
      elsif cpu_chose == 4
        cpu_unit = weapons["lizzard"]
      else
        cpu_unit = weapons["spoke"]
      end
end
def choose_winer(weapons, user_unit, cpu_unit)
  if user_unit.include?(weapons.key(cpu_unit))
    p "Cpu chose #{weapons.key(cpu_unit)}. You won with #{weapons.key(user_unit)}!"
    points = 1
  elsif user_unit == cpu_unit
    p "Cpu chose #{weapons.key(cpu_unit)}. Draw! cause your chose also #{weapons.key(cpu_unit)}"
    points = "draw"
  else
    p "Cpu chose #{weapons.key(cpu_unit)} and won your #{weapons.key(user_unit)}"
    points = 0
  end
  return points
end
rounds = 0
draw = 0
points = 0
cpu_points = 0
p "What game you want to play? (small, big)"
game_version = gets.chomp
case game_version
when "small"
  loop do
  p "Please choose wapon (stone, paper, scissors)"
  user_chose = gets.chomp
    case user_chose
    when "stone" then user_unit = weapons["stone"]
      cpu_unit = cpu_chose(weapons)
      point = choose_winer(weapons, user_unit, cpu_unit)
    when "paper" then user_unit = weapons["paper"]
      cpu_unit = cpu_chose(weapons)
      point = choose_winer(weapons, user_unit, cpu_unit)
    when "scissors" then user_unit = weapons["scissors"]
      cpu_unit = cpu_chose(weapons)
      point = choose_winer(weapons, user_unit, cpu_unit)
    when "exit"
      p "Game over!"
      break
    else
      p "Wring input!"
      rounds = rounds - 1
    end

    if point == "draw"
      draw = draw + 1
    elsif point == 1
      points = points + 1
    elsif point == 0
      cpu_points = cpu_points + 1
    end
    rounds = rounds + 1
    p "Rounds : #{rounds}, CPU: #{cpu_points}, Player: #{points}, Draw: #{draw}"
  end
when "big"
  loop do
  p "Please choose wapon (stone, paper, scissors, lizzard, spoke)"
  user_chose = gets.chomp
    case user_chose
    when "stone" then user_unit = weapons["stone"]
      cpu_unit = cpu_chose(weapons)
      point = choose_winer(weapons, user_unit, cpu_unit)
    when "paper" then user_unit = weapons["paper"]
      cpu_unit = cpu_chose(weapons)
      point = choose_winer(weapons, user_unit, cpu_unit)
    when "scissors" then user_unit = weapons["scissors"]
      cpu_unit = cpu_chose(weapons)
      point = choose_winer(weapons, user_unit, cpu_unit)
    when "spoke" then user_unit = weapons["spoke"]
      cpu_unit = cpu_chose(weapons)
      point = choose_winer(weapons, user_unit, cpu_unit)
    when "lizzard" then user_unit = weapons["lizzard"]
      cpu_unit = cpu_chose(weapons)
      point = choose_winer(weapons, user_unit, cpu_unit)
    when "exit"
      p "Game over!"
      break
    else
      p "Wring input!"
      rounds = rounds - 1
    end
    if point == "draw"
      draw = draw + 1
    elsif point == 1
      points = points + 1
    elsif point == 0
      cpu_points = cpu_points + 1
    end
    rounds = rounds + 1
    p "Rounds : #{rounds}, CPU: #{cpu_points}, Player: #{points}, Draw: #{draw}"
  end
else
  p "Wring input!"
end
