''' def stockExchange(price):
    myArray = []
    for i in range(len(price)):
        for j in range(i+1,len(price)):
            myArray.append(price[j] - price[i])
    def maxProfit(prices):
    if not prices or len(prices) < 2:
        return 0
    
    min_price = prices[0]
    max_profit = 0
    
    for price in prices[1:]:
        max_profit = max(max_profit, price - min_price)
        min_price = min(min_price, price)
    
    return max_profit
    return max(myArray) '''


def maxProfit(prices):
    if not prices or len(prices) < 2:
        return 0

    minPrice = min(prices)
    minIndex = prices.index(minPrice)
    
    MaxPrice = max(prices[minIndex+1:])

    return MaxPrice - minPrice
price = [7, 1, 5, 3, 6, 4]
maxProfit(price)
