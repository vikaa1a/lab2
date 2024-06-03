# Написать функцию для умножения комплексных чисел. На вход
#передается 4 вещественных числа: a,b,c,d, возвращаются два числа e и g, для
#которых верно:
#(a+ib)*(c+id)=e+ig

# DO NOT MODIFY CODE BELOW
require_relative '../lib/mult_numbers'
require 'test/unit'

class TestMultiplicationNumbers < Test::Unit::TestCase
  def test_both_zeros
    assert_equal [0, 0], mult_numbers(0, 0, 0, 0)
  end
  
  def test_pos_num
    assert_equal [-5, 10], mult_numbers(1, 2, 3, 4)
  end
  
  def test_mix_num
    assert_equal [26, -18], mult_numbers(-4, 2, -7, 1)
  end
  
  def test_neg_num
    assert_equal [-5, 10], mult_numbers(-1, -2, -3, -4)
  end
  

end