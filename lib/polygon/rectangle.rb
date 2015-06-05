# Defines attributes of a Rectangle with given sides
class Polygon::Rectangle
	def initialize(side_a, side_b)
		@side_a = side_a
		@side_b = side_b
	end

	def perimeter
		(@side_a + @side_b) * 2
	end
end