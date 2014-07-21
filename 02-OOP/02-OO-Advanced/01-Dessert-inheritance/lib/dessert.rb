class Dessert
  attr_accessor :name
  attr_accessor :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    if @calories < 200
      return true
    else
      false
    end
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_reader :flavor

  def initialize(name, calories, flavor)
    @flavor = flavor
    super(name, calories)
  end

  def delicious?
    if flavor == "black licorice"
      false
    else
      true
    end
  end
end
