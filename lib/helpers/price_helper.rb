module PriceHelper
  def item_price(*args)
    order_item, discount = args
    order_item - discount(order_item, discount)
  end

  def discount(order_item, discount)
    order_item * (discount / 100)
  end
end
