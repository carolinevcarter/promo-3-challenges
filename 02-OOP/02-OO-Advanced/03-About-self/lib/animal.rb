class Animal
  # Modify the following methods to enable chaining !
  def name(name) #?!
    @name = name
    return self
  end
  #TODO: find good instruction

  def specie(specie)
    @specie = specie
    return self
  end
   #TODO: find good instruction

  def color(color)
    @color = color
    return self
  end
   #TODO: find good instruction

  def natural_habitat(natural_habitat)
    @natural_habitat = natural_habitat
    return self
  end
  #TODO: find good instruction

  def to_s
    "Name: #{@name}, Specie: #{@specie}, Color: #{@color}, Natural Habitat: #{@natural_habitat}"
  end

end
