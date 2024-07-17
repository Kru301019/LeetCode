def stockExchange(prices):
    totalProfit = 0
    for i in range(1,len(prices)):
        if prices[i]> prices[i-1]:
            print(prices[i] , prices[i-1])
            totalProfit += prices[i] - prices[i-1]

    return totalProfit


prices = [7,1,5,3,6,4]
print(stockExchange(prices))
