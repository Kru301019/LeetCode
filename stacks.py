class stack:
    def __init__(self):
        self.items = []
        
    def push(self, items):
        self.items.append(items)
        
    def pop(self):
        self.items.pop()
    
    def printStack(self):
        return self.items

myStack = stack()
myStack.push(4)

myStack.push(5)
myStack.push(6)
myStack.push(8)
print(myStack.printStack())
myStack.pop()
print(myStack.printStack())
