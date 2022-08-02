count: public(uint256)

@external
def __init__(_count: uint256):
    self.count = _count

@external
def setCount(_count: uint256):
    self.count = _count

@external
def increment():
    self.count += 1
  
@external
def decrement():
    self.count -= 1