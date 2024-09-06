def Best_Time_Buy_Sell_Stock_II(prices):
    profit = 0
    for i in range(1,len(prices)):
        
        if  prices[i] > prices[i-1]:
            profit += prices[i] - prices[i-1]
        
    
    return profit


prices = [7, 6, 4, 3, 1]
Best_Time_Buy_Sell_Stock_II(prices)
