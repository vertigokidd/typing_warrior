load 'monster.rb'

class Warrior
  
  attr_accessor :health
  attr_reader :name, :xp

  def initialize(name, xp=1, health=100)
  	@name = name
  	@xp = xp
  	@health = health
  end

  def attack(monster)
    monster.health -= @xp * (rand(1..10))   # amount of attack should be random multiple of xp
  end

  def fight(monster)
    #until monster or warrior dies
    until @health <= 0 || monster.health <= 0
      attack(monster)
      p "#{monster.name}'s health: #{monster.health}"
      monster.attack(self)
      p "#{self.name}'s health: #{self.health}"
      sleep(0.5)
    end
    p dead_announce(self)
    p dead_announce(monster)
  end

  def dead_announce(fighter)
  	return "#{fighter.name} is dead" if fighter.health <= 0
  end

end

t_rex = Monster.new("T-Rex")
puts t_rex.name

if __FILE = $0
zorthan = Warrior.new("Zorthan")
puts zorthan.name
puts zorthan.xp
puts zorthan.health

t_rex = Monster.new("T-Rex")


zorthan.fight(t_rex)
p t_rex.health
p zorthan.health



end