module StoreFront
module Sale
  def on_sale(discount)
    @price = @price * discount
    return @price
  end
end 
end