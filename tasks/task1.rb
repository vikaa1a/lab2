# Написать функцию, которая получает на вход массив вещественных
# чисел и находит такую пару чисел, произведение которых имеет самый
# большой модуль среди всех возможных пар. Постараться избежать полного
# перебора всех вариантов.

require_relative '../lib/maxabs'
require 'test/unit'

class TestMaxabs < Test::Unit::TestCase
  def test_simple
    assert_equal [11.0, -7.0, 77.0], maxabs([-3.0, 5.0, -7.0, 11.0]), 'Should return correct values for simple numbers'
  end

  def test_all_pos_num
    assert_equal [11.5, 10.1, 116.2], maxabs([1.8, 11.5, 10.1, 9.4]), 'Should handle all positive numbers'
  end

  def test_all_neg_num
    assert_equal [ -12.8, -6.1, 78.1], maxabs([-2.7, -12.8, -5.1, -6.1]), 'Should handle all negative numbers'
  end

  def test_pos_and_neg_num
    assert_equal [-10.5, 9.2, 96.6], maxabs([-3.5, 9.2, -10.5, 2.8]), 'Should handle mixed positive and negative numbers'
  end
end



