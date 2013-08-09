class Monster

  attr_accessor :health
  attr_reader :name, :xp

  def initialize(name, xp=1, health=100)
  	@name = name
  	@xp = xp
  	@health = health
  end

  def attack(warrior)
    warrior.health -= @xp * (rand(1..10))   # amount of attack should be random multiple of xp
  end
  


end




if __FILE = $0



end