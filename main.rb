require_relative 'lib/helpers/price_helper'
require_relative 'lib/entities/order'

order_items = [100.0, 112.2, 301.1]
discounts = [10.0, 0, 0]
order = Order.new(order_items, discounts)
puts "Total Sum: #{order.total_price}"
