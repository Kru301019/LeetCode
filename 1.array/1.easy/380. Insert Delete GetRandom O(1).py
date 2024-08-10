import random

class RandomizedSet:
    
    def __init__(self):
        self.list = []
        
    def insert(self,val :int) -> bool:
       
       if  val not in self.list:
           self.list.append(val)
           return True
        
    def remove(self,val:int) ->bool:
        
        if  val in self.list:            
            self.list.remove(val)
            return True
        return False
        
    
    def getRandom(self):
        if not self.list:
            raise ValueError('list should not be empty')
        random_number = random.randint(0, len(self.list) - 1)
        return self.list[random_number]
    
    def printDict(self):
        return self.list
            

test = RandomizedSet()
(test.insert(1))
(test.remove(1))
print(test.getRandom())
print(test.printDict())
