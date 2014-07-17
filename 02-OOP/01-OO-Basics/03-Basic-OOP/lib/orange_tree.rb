class OrangeTree
  def initialize
    @dead = false
    @age = 0
    @fruit_production = 0

  end

  def height
    if @age >= 10
       size = 10
    else
      size = @age
    end
    return size
  end


  def one_year_passes!
    @age = @age + 1
    update_fruits
  end
  ###############################

  def dead?
    if @age <= 50
      @dead = false
    elsif @age > 50 && @age < 100
      @dead = rand(2) == 1 ? true : false
    else @age >= 100
      @dead = true
    end
    return @dead
  end



  ###############################

  def fruits
    return @fruit_production
  end

  #################################

  def pick_a_fruit!
    @fruit_production -= 1
  end

  private
  def update_fruits
    if @age <= 5
      @fruit_production = 0
    elsif @age > 5 && @age <= 10
      @fruit_production = 100
    elsif @age > 10 && @age <= 15
      @fruit_production = 200
    elsif @age > 15
      @fruit_production = 0
    end
  end


end




 #You should be able to measure the tree
#Each year, the tree should age (it becomes older and taller, and eventually dies).
#A tree grows 1 meter per year until 10 years old. Then it stops.
#Before 50 years old, the proabability of dying as a year pass is zero.
#After 50 years old, the probability of dying increases
#No tree can live more than 100 years
#A tree will produce 100 fruits a year once it is 5 years old
#A tree will produce 200 fruits a year between 10 and 15 years old
#A tree will not produce any fruits after that
#You should be able to pick an fruit from the tree
#You should be able to count how many fruits on the tree there are left
#Every year, fruits which were not picked just fall off
