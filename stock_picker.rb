def stock_picker(array)

#initialize the buy and sell variables to day 1 and day 2, respectively
	buy = array[0]
	sell = array[1]
	#makes sure the buy day(index) happens before the sell day
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
	puts "Buy on day #{(answer[0] + 1).to_s}, sell on day #{(answer[1] + 1).to_s} and make $#{(sell - buy).to_s}"
	end
end
stock_picker([17,3,6,9,15,8,6,1,10])
