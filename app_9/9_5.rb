temperatures = {
  "north" => 23,
  "south" => 31,
  "west" => 28,
  "east" => 30
}

tmp_array = temperatures.sort_by {|key, value| key}

p tmp_array
