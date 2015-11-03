puts "Enter stock prices for each day, with each day separated by a comma"
stocks = []
user_input = gets.chomp.split(",").map{|price| price.to_i}

def stock_picker(stock_prices)
	buy_day = 0
	sell_day = 0
	max_profit = -1.0/0
	stock_prices.each_with_index do |buy_price, i|
		stock_prices[i+1..-1].each_with_index do |sell_price, j|
				max_profit = sell_price - buy_price
				buy_day = i+1
				sell_day = j+i+2
			end
		end
	end
	return [buy_day, sell_day]
end
stocks = stock_picker(user_input)

puts "Buy on day #{stocks[0]}, sell on #{stocks[1]}"