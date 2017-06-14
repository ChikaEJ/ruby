class Circle

  attr_reader :radius
  @PI = 3.14
  def initialize(radius)
    @radius = radius
  end
  def square_circle
    @square = 3.14 * (@radius ** 2)
  end
  def perimeter_circle
    @perimeter_circle = 2 * 3.14 * @radius
  end
  def statistic_of_circle
    p "Radius: #{@radius}", "Perimeter of circle: #{@perimeter_circle.round(2)} ", "Square of the cercle: #{@square.round(2)}"
  end
end
circle = Circle.new(20)
p circle.radius
square = circle.square_circle
perimeter_circle = circle.perimeter_circle
circle.statistic_of_circle
