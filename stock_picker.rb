def stock_picker (array = [17,3,6,9,15,8,6,1,10])
 # Maybe change the indexs up to be find index of buy/sell
buy, index_1 = array[0], 0
sell, index_2 = array[1], 1

	array.each_with_index { |n, index_1| 
		if sell - n > sell - buy && index_1 < array.find_index(sell) || buy > sell
			buy = n
		end
		array.each_with_index {|m, index_2|	
			if m - buy > sell - buy && index_2 > index_1
				sell = m
			end		
		}
	}

	answer = [array.find_index(buy), array.find_index(sell)]
	if answer[0] == answer[1]
		puts "Sorry, no money to be made this time"
	else
	puts "Buy on day " + (answer[0] + 1).to_s + ", sell on day " + (answer[1] + 1).to_s +
	" and make $"  + (sell - buy).to_s
	end
end
stock_picker()
