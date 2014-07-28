class Restaurant

attr_reader :name, :location, :phone_number, :manager, :delivery_guy

def initialize(attributes ={})
  @name = attributes[:name]
  @location = attributes[:location]
  @phone_number = attributes[:phone_number]
  #@menu = attributes[:menu]
  #@delivery_guys = []
  #@employees = []

end


#def add_customer(customer)
#end

def add_manager(manager)
  @manager << manager
  manager.restaurant = self
end

def add_delivery_guy(delivery_guy)
  @delivery_guys << delivery_guys
  delivery_guy.restaurant = self
end

def add_meal(meal)
end

#def add_menu
  #menu = Menu.new
end