require 'spec_helper'

describe Polygon::Length do 

	it "should return the length of the length in mm" do
		length1 = Polygon::Length.new(6,'m')
		expect(length1.value).to eq(6000)
	end

end 