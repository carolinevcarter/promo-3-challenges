race_array = ["Abricot du Laudot", "Black Caviar", "Brigadier Gerard"]

def pmu_format!(race_array)
  race_array = race_array.map do |horse|
    "#{race_array.index(horse) + 1} - " + horse + "!"
  end
  race_array.reverse!
end

pmu_format!(race_array)