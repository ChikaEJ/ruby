class Point
  def initialize(x, y)
    @x = x
    @y = y
  end
  def to_s
    "x =#{@x}, y = #{@y}"
  end
end

new_point = Point.new(10, 20)
puts new_point
