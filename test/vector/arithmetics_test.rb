require 'minitest/autorun'
require 'geometry'

class ArithmeticsTest < Minitest::Test
  include Geometry

  def test_summation
    assert_equal GVector.new(4, 6), GVector.new(1, 2) + GVector.new(3, 4)
  end

  def test_subtraction
    assert_equal GVector.new(-2, -4), GVector.new(1, 0) - GVector.new(3, 4)
  end

  def test_gvector_multiplied_by_scalar
    assert_equal GVector.new(-2, -4), GVector.new(1, 2) * -2
  end

  def test_scalar_multiplied_by_gvector
    assert_equal GVector.new(-2, -4), -2 * GVector.new(1, 2)
  end
end
