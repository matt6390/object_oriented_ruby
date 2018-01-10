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
  def initialize(input_options)
    super()
    @make =  input_options[:make]
    @model = input_options[:model]
    @fuel = input_options[:fuel]
  end 

  def fuel
    @fuel
  end

  def model
    @model
  end

  def make
    @make
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end




class Bike < Vehicle
  def initialize(input_options)
    super()
    @weight = input_options[:weight]
    @speed = input_options[:speed]
    @type = input_options[:type]
  end

  def weight
    @weight
  end 

  def speed 
    @speed 
  end

  def type 
    @type 
  end

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
# # car.weight(3)          #these were used to test
# p car.make          #these were used to test
# p car.model          #these were used to test
# p car.fuel          #these were used to test
# p car.make          #these were used to test
# p car.model          #these were used to test
# p bike.size          #these were used to test
# p bike.type          #these were used to test
# p bike.weight          #these were used to test
car = Car.new(
              fuel: 20,
              make: "Honda",
              model: "Accord"
              )
bike = Bike.new(
                speed: 10,
                type: "distance",
                weight: 20
                )

p car 
p bike




