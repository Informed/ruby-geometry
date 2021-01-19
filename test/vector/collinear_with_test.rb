require 'minitest/autorun'
require 'geometry'

class CollinearWithTest < Minitest::Test
  include Geometry

  def test_gvectors_are_collinear
    gvector1 = GVector.new(1, 2)
    gvector2 = GVector.new(2, 4)

    assert gvector1.collinear_with?(gvector2)
  end

  def test_gvectors_are_not_collinear
    gvector1 = GVector.new(1, 2)
    gvector2 = GVector.new(1, 1)

    assert ! gvector1.collinear_with?(gvector2)
  end

  def test_gvectors_are_oppositely_directed
    gvector1 = GVector.new(2, 2)
    gvector2 = GVector.new(-2, -2)

    assert gvector1.collinear_with?(gvector2)
  end
end
