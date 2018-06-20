class Performance

  def initialize(input_options)
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

class Car < Performance

  attr_reader :make, :model, :year
  attr_writer :make, :model, :year

  def initialize(input_options)
    super
    @make = input_options[:make]
    @model = input_options[:model]
    @year = input_options[:year]
  end


  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike < Performance

attr_reader :type, :weight, :color
attr_writer :type, :weight, :color

  def initialize(input_options)
    super
    @type = input_options[:type]
    @weight = input_options[:weight]
    @color = input_options[:color]
  end

  def ring_bell
    puts "Ring ring!"
  end

end

car1 = Car.new(make: "Honda", )
car.honk_horn
bike1 = Bike.new
bike.ring_bell


# Open the inheritance_example.rb file from the previous example.
# Add car specific attributes to the Car class (fuel, make, model, etc.) and bicycle specific attributes to the Bicycle class (speed, type, weight, etc.). Use the super method to keep the initialize methods DRY.


