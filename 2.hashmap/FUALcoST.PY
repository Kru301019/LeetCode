def travelCost(carMilege, distance, roundTrip=False):
    petrolPrice = 96.50
    pricePerKM = petrolPrice / carMilege
    distance = distance*2 if roundTrip else distance
    print(distance)
    distancePrice = distance * round(pricePerKM, 2)
    
    print(f"A {carMilege} Milege car runs at Rs {
          round(pricePerKM, 2)} per KM \nfor {distance} KM it costs RS {distancePrice}")

carMilege = 25
distance = 186
travelCost(carMilege, distance)
'''
km/litr       price
25            96
1              
'''