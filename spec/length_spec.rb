require 'spec_helper'

describe Polygon::Length do 

	context 'Equality' do

		it "should be the same when 690 centimeters is compared with 6.45 meters" do
			length1 = Polygon::Length.new(6.45, Polygon::Length::METER)
			length2 = Polygon::Length.new(690, Polygon::Length::CENTIMETER)
			expect(length2).to eq(length1)
		end

		it "should not be the same when 645 centimeters is compared with 6.45 meters" do
			length1 = Polygon::Length.new(6.45, Polygon::Length::METER)
			length2 = Polygon::Length.new(645, Polygon::Length::CENTIMETER)
			expect(length2).to_not eq(length1)
		end

		it "should not be the same when 690 centimeters is compared with an Object" do
			length1 = Object.new
			length2 = Polygon::Length.new(690, Polygon::Length::CENTIMETER)
			expect(length2).to_not eq(length1)
		end
	end

	context 'Hash' do
		it " should be the same for 2 objects having equivalent values" do
			length1 = Polygon::Length.new(6.45, Polygon::Length::METER)
			length2 = Polygon::Length.new(645, Polygon::Length::CENTIMETER)
			expect(length1.hash).to eq(length2.hash)
		end

		it " should not be the same for 2 objects having different values" do
			length1 = Polygon::Length.new(6.45, Polygon::Length::METER)
			length2 = Polygon::Length.new(690, Polygon::Length::CENTIMETER)
			expect(length1.hash).to_not eq(length2.hash)
		end
	end

	context 'in_millimeters' do
		it "should return 640 for a length object initialized with 64 centimeters " do
			length = Polygon::Length.new(64, Polygon::Length::CENTIMETER)
			expect(length.in_millimeters).to eq(640)
		end
	end

	context 'Addition' do
		it "should return a length object of 60 centimeters when a length object of 36 centimeters is added to another length object of 240 millimeters" do
			length1 = Polygon::Length.new(36, Polygon::Length::CENTIMETER)
			length2 = Polygon::Length.new(240, Polygon::Length::MILLIMETER)
			length3 = Polygon::Length.new(60, Polygon::Length::CENTIMETER)
			expect(length1 + length2).to eq(length3)
		end
	end

end 