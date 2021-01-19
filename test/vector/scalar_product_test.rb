require 'minitest/autorun'
require 'geometry'

class ScalarProductTest < Minitest::Test
  include Geometry

  def test_gvectors_are_perpendicular
    assert 0 === GVector.new(1, 1).scalar_product(GVector.new(-1, 1))
  end

  def test_gvectors_are_collinear
    assert(-4 === GVector.new(1, 1).scalar_product(GVector.new(-2, -2)))
  end

  def test_gvectors_are_inclined
    assert 1 === GVector.new(1, 1).scalar_product(GVector.new(0, 1))
  end
end
