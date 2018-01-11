module Movement      #modules should be a concept, not an obkect
  def brake
    @speed = 0
  end

  def accelerate
    p @speed
    @speed += 10
    p @speed
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Vehicle      #used in combination with the module to make the initialize method "work better"
  include Movement
  def initialize      #used in combination with the module to make the initialize method "work better"
    @speed = 0      #used in combination with the module to make the initialize method "work better"
    @direction = 'north'      #used in combination with the module to make the initialize method "work better"
  end      #used in combination with the module to make the initialize method "work better"
end      #used in combination with the module to make the initialize method "work better"



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

bike = Bike.new              
car = Car.new              