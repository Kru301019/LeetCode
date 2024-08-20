def Greatest_Number_of_Candies(candies, extraCandies):
    
    maxCandy = max(candies)
    resultArray = []
    
    for canday in candies:
        if canday + extraCandies >= maxCandy:
            resultArray.append(True)
        else:
            resultArray.append(False)
            
    
            
candies = [2, 3, 5, 1, 3]
extraCandies = 3
Greatest_Number_of_Candies(candies, extraCandies)
