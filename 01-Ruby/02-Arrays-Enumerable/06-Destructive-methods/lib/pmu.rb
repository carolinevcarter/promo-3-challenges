race_array = ["Abricot du Laudot", "Black Caviar", "Brigadier Gerard"]

def pmu_format!(race_array)
  x = 0
  while x < race_array.length
    race_array[x] = "#{x + 1}-#{race_array[x]}!"
    x = x + 1
  end
  race_array.reverse!
end