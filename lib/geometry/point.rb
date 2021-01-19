module Geometry
  class Point < Struct.new(:x, :y)
    def self.new_by_array(array)
      self.new(array[0], array[1])
    end

    def ==(another_point)
      x === another_point.x && y === another_point.y
    end

    def to_gvector
      GVector.new(x, y)
    end

    def advance_by(gvector)
      Point x + gvector.x, y + gvector.y
    end

    def distance_to(point)
      Geometry.distance(self, point)
    end
  end
end

def Point(x, y)
  Geometry::Point.new(x, y)
end
