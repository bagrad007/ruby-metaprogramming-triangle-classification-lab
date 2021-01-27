class Triangle
  attr_accessor :a, :b, :c
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind 
  
    if a + b <= c || b + c <= a || a + c <= b || a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    else
      if a == b && b==c && a == c
        return :equilateral
      elsif  b == c || a == c || a == b
        return :isosceles
      elsif a != b && b != c && a != c
        return :scalene
      end
    end
  end

  class TriangleError < StandardError
    #some code
  end
end
