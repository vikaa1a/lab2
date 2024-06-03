# @param [Float] a
# @param [Float] b
# @param [Float] c
# @param [Float] d
def mult_numbers(a, b, c, d)
  e = a * c - b * d
  g = a * d + b * c
  [e, g]
end