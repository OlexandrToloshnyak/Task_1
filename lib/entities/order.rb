class Order
  include PriceHelper

  attr_reader :order_items, :discounts

  def initialize(order_items, discounts)
    @order_items = order_items
    @discounts = discounts
  end

  def total_price
    order_items.zip(discounts).sum { |item| item_price(*item) }
  end
end
