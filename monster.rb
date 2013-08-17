class Monster
  include Attacker

  attr_reader :name, :xp, :level

  def initialize(name, xp=1, level=1)
  	@name = name
  	@xp = xp
    @level = level
  end

  

end


