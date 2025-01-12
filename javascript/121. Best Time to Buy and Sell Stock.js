function stockBuySell(prices){
   let minPrice = prices[0]
   let maxProfit = 0

   for (i =1; i< prices.length; i++) {
        if (prices[i] < minPrice){
            minPrice = prices[i]
        }
        const profit = prices[i] - minPrice
        if (profit > maxProfit){
            maxProfit = profit
        }
   }
   return maxProfit
};

let prices = [7,1,5,3,6,4]
stockBuySell(prices)