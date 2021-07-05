require_relative 'price_helper'

order = [100.0, 112.2, 301.1]
discounts = [10.0, 0, 0]
total_sum = order.zip(discounts).sum { |item| PriceHelper.new(*item).item_price }
puts "Total Sum: #{total_sum}"
