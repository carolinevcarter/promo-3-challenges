class Recipe

  attr_reader :name, :description



  attr_writer :name, :description


  def initialize(name, description)
    @name = name
    @description = description
  end

end
