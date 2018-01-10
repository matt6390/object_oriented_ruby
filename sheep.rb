class Sheep
  # @@count = 0    #this is a class variable
  def initialize
    # @@count += 1
    # @count = @@count  #these are instance variables
    # fed = true
  end

  def bleet
    puts has_money
  end

  private
  def has_money
    true
  end

  # def self.how_many
  #   return @@count
  # end
end


sheep =Sheep.new
sheep.bleet
sheep.has_money. #this cannot be used, since it was made private before the method was called






# p Sheep.how_many
# Sheep.new
# Sheep.new
# Sheep.new
# p Sheep.how_many