require "pry"

class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end
  
  def kind
    validateError

    if length1 == length2 && length2 == length3
      :equilateral
    elsif length2 == length3 || length1 == length3 || length1 == length2
      :isosceles
    else 
      :scalene
    end
  end


  def validateError
    real_triangle = [(length1 + length2 > length3), (length1 + length3 > length2), (length2 + length3 > length1)]
    [length1, length2, length3].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end
  end


  class TriangleError < StandardError
  end
end
