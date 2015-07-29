# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit
	attr_accessor :health_points, :attack_power, :train_footman
  
  def initialize
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    
    @health_points = 60
    @attack_power = 10
  end

  def attack!(enemy)
    #binding.pry
    x = @attack_power
    enemy.damage(@attack_power)
    # the 'enemy' is being passed in, we know that our 'enemy' is also a footman(object)
    #this footman(enemy) can also take damage
    #thus, we can use our #damage and pass in OUR footmans attack_power. 
  end

  def damage(attack_power)
    @health_points -= attack_power
  end

end

