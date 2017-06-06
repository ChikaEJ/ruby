def array_generator(length_of_array)
  generated_array = []
  length_of_array.times do
    generated_array.push(rand(15..30))
  end
  return generated_array
end

p "Please enter size of arays"
size_of_arrays = gets.chomp.to_i

meteo_station_south = array_generator(size_of_arrays)
meteo_station_west = array_generator(size_of_arrays)
meteo_station_east = array_generator(size_of_arrays)
meteo_station_north = array_generator(size_of_arrays)

p "Generated arrays of temperatures:"
p "meteo_station_south = #{meteo_station_south}"
p "meteo_station_west = #{meteo_station_west}"
p "meteo_station_east = #{meteo_station_east}"
p "meteo_station_north = #{meteo_station_north}\n"

array_of_all = meteo_station_north + meteo_station_east + meteo_station_west + meteo_station_south

amount = 0
array_of_all.each do |i|
  amount = amount + i
end
average_of_temperature = amount/array_of_all.size.to_f
p "Average temperature: #{average_of_temperature.round(3)}"
