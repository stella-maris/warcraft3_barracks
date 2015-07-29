require_relative 'spec_helper'

describe Unit do 
	before :each do
		@unit = Unit.new(0,5)
	end

	describe '#is_dead?' do 
		it "should return true if unit's health points are at 0" do 
			# allow(@unit).to receive(:health_points).and_return(0)
		expect(@unit.is_dead?).to be true
	end
end

# 	it "should return false if unit's health points are above 0" do 
# 		expect(@unit.is_dead?).to be false
# 	end
# end
end