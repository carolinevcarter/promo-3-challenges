
McDonalds = Hash["Cheeseburger" => 290,
  "Big Mac" => 300,
  "Mc Bacon" => 400,
  "Royal Cheese" => 130,
  "French fries" => 130,
  "Potatoes" =>130,
  "Coca" => 160,
  "Sprite" => 170]

def poor_calories_counter(burger, side, beverage)
  sum = 0
  McDonalds.each do |x,y|
    if x == burger || x == side || x == beverage
      sum += y
    end
  return sum
  end
end


def calories_counter(*orders)
  sum = 0
  orders.each do |x|
    if x == "Happy Meal"
      sum += poor_calories_counter("Cheese Burger", "French fries", "Coca")
    elsif x == "Best Of Big Mac"
      sum += poor_calories_counter("Big Mac", "French fries", "Coca")
    elsif x == "Best Of Royal Cheese"
      sum += poor_calories_counter("Royal Cheese", "Potatoes", "Sprite")
    else
      sum += McDonalds[x]
    end
  return sum
  end
end

