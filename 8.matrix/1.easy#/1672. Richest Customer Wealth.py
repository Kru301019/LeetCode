def Richest_Customer_Wealth(accounts):
    richestCust = 0
    for wealth in accounts:
        richestCust = max(richestCust, sum(wealth))
    return richestCust

accounts = [[1, 5], [7, 3], [3, 5]]
Richest_Customer_Wealth(accounts)
