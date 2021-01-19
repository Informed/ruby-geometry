module Geometry
  class GVector < Struct.new(:x, :y)
    def ==(gvector)
      x === gvector.x && y === gvector.y
    end

    # Modulus of gvector. Also known as length, size or norm
    def modulus
      Math.hypot(x ,y)
    end

    # z-coordinate of cross product (also known as gvector product or outer product)
    # It is positive if other gvector should be turned counter-clockwise in order to superpose them.
    # It is negetive if other gvector should be turned clockwise in order to superpose them.
    # It is zero when gvectors are collinear.
    # Remark: x- and y- coordinates of plane gvectors cross product are always zero
    def cross_product(gvector)
      x * gvector.y - y * gvector.x
    end

    # Scalar product, also known as inner product or dot product
    def scalar_product(gvector)
      x * gvector.x + y * gvector.y
    end

    def collinear_with?(gvector)
      cross_product(gvector) === 0
    end

    def +(gvector)
      GVector.new(x + gvector.x, y + gvector.y)
    end

    def -(gvector)
      self + (-1) * gvector
    end

    def *(scalar)
      GVector.new(x * scalar, y * scalar)
    end

    def coerce(scalar)
      if scalar.is_a?(Numeric)
        [self, scalar]
      else
        raise ArgumentError, "GVector: cannot coerce #{scalar.inspect}"
      end
    end
  end
end
