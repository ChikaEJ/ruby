array_gol = [3, 5, 4, 4, 8, 3]
array_mist = [3, 5, 6, 7, 54, 4]
i = 0
array_gol.count.times do
  if array_gol[i] == array_mist[i]
    puts 'Drow'
  elsif array_gol[i] < array_mist[i]
    puts "Lost"
  else
    puts "Win"
  end
  i += 1
end
