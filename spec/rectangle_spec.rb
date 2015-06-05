require 'spec_helper'

describe Polygon::Rectangle do 
	it "Should return perimeter as 20 m when the sides are of length 6m and 4m" do
		side_a = Polygon::Length.new(6, Polygon::Length::METER)
		side_b = Polygon::Length.new(4, Polygon::Length::METER)
		perimeter = Polygon::Length.new(20, Polygon::Length::METER)
		rectangle = Polygon::Rectangle.new(side_a, side_b)
		expect(rectangle.perimeter).to eq(perimeter)
	end

	it " Should return perimeter as 5.6 cm when the sides are of length 2cm and 80mm" do
		side_a = Polygon::Length.new(2, Polygon::Length::CENTIMETER)
		side_b = Polygon::Length.new(80, Polygon::Length::MILLIMETER)
		perimeter = Polygon::Length.new(20, Polygon::Length::CENTIMETER)
		rectangle = Polygon::Rectangle.new(side_a, side_b)
		expect(rectangle.perimeter).to eq(perimeter)
	end

end 