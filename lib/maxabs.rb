# @param [Array<Float>] arr
def maxabs(arr)
  return 0 if arr.size == 0

  max1 = arr.max_by(&:abs)
  arr.delete(max1)
  max2 = arr.max_by(&:abs) 

  product = (max1 * max2).abs
  [max1, max2, product.round(1)] 
end
