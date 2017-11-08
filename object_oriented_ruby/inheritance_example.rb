class Vehicle
  attr_accessor :speed

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

class Car < Vehicle
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

test = Bike.new

test.ring_bell
puts test.speed
test.accelerate
puts test.speed
