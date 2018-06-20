module Transportationable
  
  def initialize
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

class Car
  
  include Transportationable

  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike
  include Transportationable

  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new
p car1.brake
car1.honk_horn

bike1=Bike.new
p bike1.turn("left")
bike1.ring_bell
