require "./sale.rb"
require "./store_item.rb"

module StoreFront
class Food < Store
  include Sale
  def initialize(input_item_name, input_item_color, input_item_price)
    super(input_item_name, input_item_color, input_item_price)
    @shelf_life = 3
  end

  def shelf_life
    @shelf_life
  end

end
end