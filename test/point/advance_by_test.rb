require 'minitest/autorun'
require 'geometry'

class AdvanceByTest < Minitest::Test
  include Geometry

  def test_advance_by
    point = Point.new(10, 15)
    gvector = GVector.new(-5, -10)
    assert_equal Point.new(5, 5), point.advance_by(gvector)
  end
end
