# Линия трехочковых бросков находится на расстоянии 6.25 метров от
# кольца. Для простоты считаем ее частью окружности с центром,
# расположенным на внешней линии площадки. Размеры площадки – 28 на 15
# метров. Реализуйте функцию, которая принимает 2 числа – координаты X и Y
# и возвращает:
# • nil если точка вне площадки
# • 2 если попадание из этой точки стоит 2 очка
# • 3 если попадание из этой точки стоит 3 очка

require_relative '../lib/point'
require 'test/unit'

class TestPointOnField < Test::Unit::TestCase
  def test_2_point
    assert_equal 2, point(2,2)
  end

  def test_3_point
    assert_equal 3, point(25, 15)
  end
  
  def test_0_point
    assert_equal nil, point(50, 50)
  end
  
  def test_neg_point
    assert_equal nil, point(-50, -50)
  end
end