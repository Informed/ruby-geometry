require 'minitest/autorun'
require 'geometry'

class ToGVectorTest < Minitest::Test
  include Geometry

  def test_regular_case
    segment = Segment.new_by_arrays([1, 1], [3, 2])

    assert_equal GVector.new(2, 1), segment.to_gvector
  end

  def test_takes_direction_into_account
    end_points = [Point.new(1, 1), Point.new(2, 2)]

    assert_equal GVector.new(1, 1), Segment.new(end_points[0], end_points[1]).to_gvector
    assert_equal GVector.new(-1, -1), Segment.new(end_points[1], end_points[0]).to_gvector
  end
end
