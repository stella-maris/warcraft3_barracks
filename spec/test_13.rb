require_relative 'spec_helper'

describe Unit do 
	before :each do
		@unit = Unit.new(0,10)
	end

	describe '#attack!' do
		it "should not attack a dead unit" do
			enemy = Footman.new
			enemy.attack!(@unit)
			expect(@unit.health_points).to eql(0)
		end
	end
end
