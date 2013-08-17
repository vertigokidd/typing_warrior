module Attacker
  
attr_accessor :health

  def attack(target)
    target.health -= (self.level) * (rand(1..10))   # amount of attack should be random multiple of xp
  end

  def defend

  end

  # def dead?
  #   self.health < 0 || self.health == 0
  # end


end