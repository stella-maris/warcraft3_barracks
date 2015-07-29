require_relative 'spec_helper'

describe Barracks do 
	
	before :each do
		@barracks = Barracks.new
	end
	it "has and knows its HP, which is substantially more than a Footman" do
	expect(@barracks.health_points).to eq(500)
end

	describe "#damage" do
		it "should reduce the barrack's health_point by the attack_power specified" do
			footman = Footman.new
			footman.attack!(@barracks)
			expect(@barracks.health_points).to eq(495)
		end
	end
end