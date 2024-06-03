# Написать скрипт для поиска первых N простых чисел.

# DO NOT MODIFY CODE BELOW
require_relative '../lib/find_n'
require 'test/unit'
require 'prime'

class TestFindingNumbers < Test::Unit::TestCase
  def test_1_prime
    assert_equal [2], find_n(1)
  end
  
  def test_5_primes
    assert_equal [2, 3, 5, 7, 11], find_n(5)
  end
  
  def test_0_primes
    assert_equal [], find_n(0)
  end

  def test_neg_prime
    assert_equal [], find_n(-1)
  end

end

