class Triangle

  attr_reader :side1, :side2, :side3


  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  class TriangleError < StandardError
  end

  def kind
    if self.side1 <= 0 || self.side2 <= 0 || self.side3 <= 0
      raise TriangleError
    elsif (self.side1 + self.side2) <= self.side3 || (self.side2 + self.side3) <= self.side1 || (self.side1 + self.side3) <= self.side2
      raise TriangleError
    elsif self.side1 == self.side2 && self.side2 == self.side3
      return :equilateral
    elsif (self.side1 == self.side2 && self.side2 != self.side3)  || (self.side1 == self.side3 && self.side1 != self.side2)  || (self.side2 == self.side3 && self.side2 != self.side1)
      return :isosceles
    else
      return :scalene
    end
  end
end
