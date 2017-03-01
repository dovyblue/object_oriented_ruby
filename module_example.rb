# vehicle module
module Vehicle
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

# car module
module CarMethod
  def honk_horn
    puts "Beeeeeeep!"
  end
end

# car class
class Car
  def initialize
    @speed = 0
    @direction = 'north'
  end
  
  include Vehicle
  include CarMethod
end

# bike class
class Bike < Car
  def initialize
    super
    @tires = "thin"
  end
  
  include Vehicle

  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new
p car1.brake

bike1 = Bike.new 
p bike1.brake