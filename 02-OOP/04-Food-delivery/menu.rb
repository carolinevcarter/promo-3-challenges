require_relative'csv'
require_relative 'meal'

class Menu

attr_reader :menu_tab

  def initialize(menu_file_path)
    @menu_file_path = menu_file_path
    @menu_tab = []
    load_csv =(menu_file_path)
  end

  def save_to_csv
    CSV.open(@csv_file, 'w') do |csv|
      @meals.each do |meal|
        csv.puts([meal.name])
  end

  def load_csv(file)
    CSV.foreach(file) do |row|
    @menu_tab << Meal.new(row[0], row[1], row[2])

  end

  def add_meal(name, price)
    @menu_tab[name] = price
  end

end

