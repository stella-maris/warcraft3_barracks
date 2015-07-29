require 'pry'
class Unit
	attr_reader :health_points, :attack_power
	
	def initialize(health_points, attack_power)
		@health_points = health_points
		@attack_power = attack_power
	end

	def is_dead?
		@health_points == 0
	end

 def attack!(enemy)
    
    x = @attack_power
    return if enemy.is_dead?
    # the 'enemy' is being passed in, we know that our 'enemy' is also a footman(object)
    #this footman(enemy) can also take damage
    #thus, we can use our #damage and pass in OUR footmans attack_power. 
    if enemy.class.name == 'Barracks'
      enemy.damage(@attack_power / 2)
    elsif enemy.class.name == 'SiegeEngine'
      enemy.damage(@attack_power * 2)
    else enemy.damage(@attack_power)
    end
  end

  def damage(attack_power)
    @health_points -= attack_power
  end

end