# Represents the measure of a side in a Polygon
class Polygon::Length
	attr_reader :value
	METER = 1000
	CENTIMETER = 10
	MILLIMETER = 1
	
	def initialize(length,unit)
		@unit = unit
		@value = length
	end

	def in_millimeters
		(@unit * @value).to_i
	end

	def ==(other_length)
		return false if self.class != other_length.class
		in_millimeters == other_length.in_millimeters
	end

	def hash
		in_millimeters.hash
	end

	def +(other_length)
		Polygon::Length.new(other_length.in_millimeters + in_millimeters, MILLIMETER)
	end

	def *(number)
		Polygon::Length.new(in_millimeters * number, MILLIMETER)
	end
	alias :eql? :==  
end