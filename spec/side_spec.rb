require 'spec_helper'

describe Polygon::Side do 

	it "should return the length of the side in mm" do
		side1 = Polygon::Side.new(6,'m')
		expect(side1.length).to eq(6000)
	end

end 