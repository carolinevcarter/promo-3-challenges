class Cars
  def initialize(color, brand, power)
    @color = color
    @brand = brand
    @power = power
    @engine_started = false
  end

  def engine
    @engine_started = true

  end
end

