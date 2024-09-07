def Gas_Station(gas, cost):
    
    fillGas = 0
    for i in range(2,len(gas)+3):
        myI = i%len(gas)
        if i == 2:
            
            fillGas = fillGas + gas[myI]
        else:
            fillGas = fillGas + gas[myI]-cost[myI-1]
      
    if fillGas < cost[myI-1]:
        return True
    else:
        return -1
        

gas = [1, 2, 3, 4, 5]
cost = [3, 4, 5, 1, 2]
Gas_Station(gas, cost)
