require 'minitest/autorun'
require 'geometry'

class ModulusTest < Minitest::Test
  include Geometry

  def test_parallel_to_axis
    assert 1 === GVector.new(1, 0).modulus
    assert 1 === GVector.new(0, 1).modulus
  end

  def test_inclined
    assert sqrt(2) === GVector.new(1, 1).modulus
  end
end
