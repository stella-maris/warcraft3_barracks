class Peasant < Unit
	attr_accessor :health_points, :attack_power
	def initialize
		super(35,0)
	end
end