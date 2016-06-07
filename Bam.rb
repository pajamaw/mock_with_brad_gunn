prices = [12, 4, 15, 77, 14, 1, 100, 2]
def biggest_loss(stock_p)
  buy_price=nil
  buy_date = nil
  sell_date = nil
  sell_price=nil
    stock_p.with_index.reverse_each do |price, index|
        buy_price ||= price
        sell_price ||= price
        if buy_price > price
          buy_price = price
        end
        if sell_price < price
          sell_price = price
        end
      end
  puts "Max Arbitrage #{sell_price - buy_price}"
end
