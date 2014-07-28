class Restaurant

  attr_reader :city
  attr_reader :name
  attr_reader :type_of_food
  attr_reader :average_rating

  def initialize(city, name)
    #TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @type_of_food = type_of_food
    @all_ratings = []
    @average_rating = 0
  end

  #TODO: implement #filter_by_city and #rate methods

  def rate(restaurant_rating)
    sum = 0
    @all_ratings << restaurant_rating.to_f
    @all_ratings.each do |rate|
      sum += rate
    end
    @average_rating = sum / @all_ratings.length
  end

  def self.filter_by_city(restaurants, city)
    restaurants.select do |restaurant|
      if restaurant.city == city
        true
      else
        false
      end
    end
  end
end
