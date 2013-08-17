load 'attacker.rb'
load 'monster.rb'

class Warrior
  include Attacker
  
  attr_reader :name, :xp, :level

  def initialize(name, xp=1, level=1)
  	@name = name
  	@xp = xp
    @level = level
  end

  # def attack(monster)
  #   monster.health -= @level * (rand(1..10))   # amount of attack should be random multiple of xp
  # end

  # def fight(monster)
  #   #until monster or warrior dies
  #   until @health <= 0 || monster.health <= 0
  #     attack(monster)
  #     p "#{monster.name}'s health: #{monster.health}"
  #     monster.attack(self)
  #     p "#{@name}'s health: #{@health}"
  #     sleep(0.5)
  #   end
  #   p dead_announce(self)
  #   p dead_announce(monster)
  # end

  # def dead_announce(fighter)
  # 	return "#{fighter.name} is dead" if fighter.health <= 0
  # end

end

# t_rex = Monster.new("T-Rex")
# puts t_rex.name

if __FILE = $0
zorthan = Warrior.new("Zorthan")
puts zorthan.name
puts zorthan.xp
zorthan.health = 100

t_rex = Monster.new("T-Rex")
t_rex.health = 100

zorthan.attack(t_rex)
p t_rex.health
t_rex.attack(zorthan)
p zorthan.health

  until zorthan.health <= 0 || t_rex.health <= 0
    zorthan.attack(t_rex)
    p "#{t_rex.name}'s health: #{t_rex.health}"
    t_rex.attack(zorthan)
    p "#{zorthan.name}'s health: #{zorthan.health}"
    sleep(0.5)
  end

end


