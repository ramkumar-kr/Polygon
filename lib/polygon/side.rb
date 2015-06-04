# Defines attributes of a Side in a Polygon
class Polygon::Side
	attr_reader :length
	def initialize(length,unit)
		@length = length * 1000 if unit == 'm'
		@length = length * 10 if unit == 'cm'
		@length = length if unit == 'mm'
	end


end