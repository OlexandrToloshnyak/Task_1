class PriceHelper
  def initialize(order_item, discount)
    @order_item = order_item
    @discount = discount
  end

  def item_price
    @order_item - discount
  end

  def discount
    @order_item * (@discount / 100)
  end
end
