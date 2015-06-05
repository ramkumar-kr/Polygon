# Represents the measure of a side in a Polygon
class Polygon::Length
	attr_reader :value
	
	def initialize(length,unit)
		@value = length * 1000 if unit == 'm'
		@value = length * 10 if unit == 'cm'
		@value = length if unit == 'mm'
	end


end