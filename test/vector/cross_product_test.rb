require 'minitest/autorun'
require 'geometry'

class CrossProductTest < Minitest::Test
  include Geometry

  def test_positive
    assert 1 === GVector.new(1, 0).cross_product(GVector.new(0, 1))
  end

  def test_negative
    assert(-1 === GVector.new(0, 1).cross_product(GVector.new(1, 0)))
  end

  def test_zero
    assert 0 === GVector.new(1, 1).cross_product(GVector.new(-2, -2))
  end

  def test_unnormalized
    assert 4 === GVector.new(1, 1).cross_product(GVector.new(-2, 2))
  end
end
