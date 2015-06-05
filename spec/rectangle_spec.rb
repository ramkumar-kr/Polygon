require 'spec_helper'

describe Polygon::Rectangle do 
	it "Should return perimeter as 20000 mm when the sides are of length 6m and 4m" do
		side_a = Polygon::Length.new(6,'m')
		side_b = Polygon::Length.new(4,'m')
		rectangle = Polygon::Rectangle.new(side_a,side_b)
		expect(rectangle.perimeter).to eq("20000 mm")
	end

	it " Should return perimeter as 200 mm when the sides are of length 2cm and 80mm" do
		side_a = Polygon::Length.new(2,'cm')
		side_b = Polygon::Length.new(80,'mm')
		rectangle = Polygon::Rectangle.new(side_a,side_b)
		expect(rectangle.perimeter).to eq("200 mm")
	end

end 