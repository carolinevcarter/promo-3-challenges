module DemoModule

  class DemoClass

    def self.introduce
      3
    end
    #TODO: choose return between 1, 2, 3

    def introduce
      1
    end
     #TODO: choose return between 1, 2, 3

  end

    def self.introduce
      2
    end
  #TODO: choose return between 1, 2, 3

end

def has_tierce?
  first = DemoModule::introduce
  second = DemoModule::DemoClass.introduce
  third = DemoModule::DemoClass.new.introduce
  [first, second, third] == [1, 2, 3]
end

