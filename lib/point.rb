# @param [Float] x
# @param [Float] y
def point(x,y)
  return nil if x < 0 || x > 28 || y < 0 || y > 15
  distance = Math.sqrt(x**2 + (y - 7.5)**2)
  return distance > 6.25 ? 3 : 2
end