require 'spec_helper'

describe Polygon::Length do 

	context 'Equality' do

		it "should return 1 when 690 centimeters is compared with 6.45 meters" do
			length1 = Polygon::Length.new(6.45, Polygon::Length::METER)
			length2 = Polygon::Length.new(690, Polygon::Length::CENTIMETER)
			expect(length2 <=> length1).to eq(1)
		end

		it "should return 0 when 645 centimeters is compared with 6.45 meters" do
			length1 = Polygon::Length.new(6.45, Polygon::Length::METER)
			length2 = Polygon::Length.new(645, Polygon::Length::CENTIMETER)
			expect(length2 <=> length1).to eq(0)
		end

		it "should return -1 when 640 centimeters is compared with 6.45 meters" do
			length1 = Polygon::Length.new(6.45, Polygon::Length::METER)
			length2 = Polygon::Length.new(640, Polygon::Length::CENTIMETER)
			expect(length2 <=> length1).to eq(-1)
		end

		it "should return nil when 690 centimeters is compared with an Object" do
			length1 = Object.new
			length2 = Polygon::Length.new(690, Polygon::Length::CENTIMETER)
			expect(length2 <=> length1).to eq(nil)
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