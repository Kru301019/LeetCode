def Best_Time_to_Buy_II(prices):
	sellStocks = 0
	buyStocks = prices[0]
	i = 0
	profit = [i]

	for price in prices[1:]:
		
		buyStocks = min(buyStocks, price)
		sellStocks = max(sellStocks, price)
		if (sellStocks - buyStocks) > profit[i]:
			print('1--',sellStocks , buyStocks,price )
			buyStocks = price
			i+=1
			profit.append(sellStocks - buyStocks)
	
	print(profit)
prices = [7,1,5,3,6,4]
Best_Time_to_Buy_II(prices)


