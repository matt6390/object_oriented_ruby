#You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.


# boat = ["name" => "boat", "color" => "red", :price => 10, shelf: 2]
# car = ["name" => "car", "color" => "green", :price => 15, shelf: 1]
# wingsuit = ["name" => "wingsuit", "color" => "rainbow", :price => 25, shelf: 86]



class Store


  def initialize(input_item_name, input_item_color, input_item_price)
    @item_name = input_item_name
    @item_color = input_item_color
    @item_price = input_item_price
  end

  def name
    @name
  end

  def color
    @color
  end

  def price  #price reader
    @price
  end

  def name=(new_name)
    @name = new_name 
  end

  def price=(new_price) #price writter
    @price = new_price
  end

  def color=(new_color)
    @color = new_color
  end
end

item_1 = Store.new("boat", "red", 10)
item_2 = Store.new("car", "green", 15)
item_3 = Store.new("wingsuit", "rainbow", 25)

p item_1

