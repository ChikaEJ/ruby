wapons = {
  "stone" => ['lizzard', 'scissors'],
  "paper" => ['stone', 'spoke'],
  "scissors" => ['paper', 'lizzard'],
  "lizzard" => ['spoke', 'paper'],
  "spoke" => ['scissors', 'stone']
}


def cpu_chose(wapons)
      cpu_chose = rand(1..5)
      if cpu_chose == 1
        cpu_unit = wapons["stone"]
      elsif cpu_chose == 2
        cpu_unit = wapons["paper"]
      elsif cpu_chose == 3
        cpu_unit = wapons["scissors"]
      elsif cpu_chose == 4
        cpu_unit = wapons["lizzard"]
      else
        cpu_unit = wapons["spoke"]
      end
end
def choose_winer(wapons, user_unit, cpu_unit)
  if user_unit.include?(wapons.key(cpu_unit))
    p "You win!"
    points = 1
  elsif user_unit == cpu_unit
    p "Draw!"
    points = "draw"
  else
    p "You lost!"
    points = 0
  end
  return points
end
rounds = 0
draw = 0
points = 0
cpu_points = 0
loop do
p "Please choose wapon"
user_chose = gets.chomp
  case user_chose
  when "stone" then user_unit = wapons["stone"]
    cpu_unit = cpu_chose(wapons)
    point = choose_winer(wapons, user_unit, cpu_unit)
  when "spoke" then user_unit = wapons["spoke"]
    cpu_unit = cpu_chose(wapons)
    point = choose_winer(wapons, user_unit, cpu_unit)
  when "paper" then user_unit = wapons["paper"]
    cpu_unit = cpu_chose(wapons)
    point = choose_winer(wapons, user_unit, cpu_unit)
  when "lizzard" then user_unit = wapons["lizzard"]
    cpu_unit = cpu_chose(wapons)
    point = choose_winer(wapons, user_unit, cpu_unit)
  when "scissors" then user_unit = wapons["scissors"]
    cpu_unit = cpu_chose(wapons)
    point = choose_winer(wapons, user_unit, cpu_unit)
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
