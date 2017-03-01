# vehicle class
class Vehicle
  attr_reader :make, :model
  
  def initialize(input_options)
    @make = input_options[:make]
    @model = input_options[:model]
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

# car class
class Car < Vehicle
  attr_reader :fuel

  def initialize(input_options)
    super
    @fuel = input_options[:fuel] 
  end
  
  def honk_horn
    puts "Beeeeeeep!"
  end
end

# bike class
class Bike < Vehicle
  attr_reader :weight
  
  def initialize(input_options)
    super
    @weight = input_options[:weight]
  end
  
  def ring_bell
    puts "Ring ring!"
  end
end

bike1 = Bike.new(make: "treck", model: "FX 700", weight: 15)
bike1.ring_bell

car1 = Car.new(make: "honda", model: "accord", fuel: "regular") 
car1.honk_horn