def BestToSell(prices):
	buyPrice = prices[0]
	maxProfit = 0
	for price in prices[1:]:
	
		buyPrice = min(buyPrice, price)
		print(maxProfit,price,buyPrice)
		maxProfit = max(maxProfit, price-buyPrice)
		
		
	

prices = [7, 5, 1, 3, 6, 4]
BestToSell(prices)