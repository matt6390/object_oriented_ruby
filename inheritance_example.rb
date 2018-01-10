class Vehicle  #required me to have this clas at the top, even though it wasnt needed like that before
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

# bike = Bike.new              #these were used to test
# car = Car.new              #these were used to test
# p bike               #these were used to test
# p car               #these were used to test
# bike.accelerate              #these were used to test
# car.accelerate              #these were used to test
# p bike              #these were used to test
# p car               #these were used to test
# bike.ring_bell              #these were used to test
# car.honk_horn              #these were used to test









