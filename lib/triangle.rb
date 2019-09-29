class Triangle

  attr_accessor :left, :right, :bottom
  
  def initialize(left, right, bottom)
    @left = left
    @right = right
    @bottom = bottom
  end
#   The sum of the lengths of any two sides of a triangle always 
# exceeds the length of the third side. This is a principle known 
# as the triangle inequality.
# Further, each side must be larger than 0.
  def kind
    if
      @left > 0 && @right > 0 && @bottom > 0 &&
      @left + @right > @bottom && @left + @bottom > @right && 
      @right + @bottom > @left
        if @left == @right && @right == @bottom
          :equilateral
        elsif @left == @right && @left != @bottom ||
              @left == @bottom && @left != @right ||
              @right == @bottom && @right != @left
              :isosceles
        else
          :scalene
        end
    else 
        raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
