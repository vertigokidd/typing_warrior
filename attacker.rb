module Attacker

  require 'io/console'
  
  attr_accessor :health

  def generate_random_letter
    ('A'..'Z').to_a.sample
  end

  def attack_with_letter(target)
    random_letter = generate_random_letter
    puts "Fire a #{random_letter}!"
    begin_time = Time.now
    ch = STDIN.getch
    if ch.upcase == random_letter && Time.now - begin_time < 2
      puts
      puts "Attack successful!"
      attack!(target)
    else
      puts
      puts "Missed!"
      puts
    end
  end

  def attack!(target)
    target.health -= (self.level) * (rand(1..10))   # amount of attack should be random multiple of xp
  end

  def defend!

  end

  # def dead?
  #   self.health < 0 || self.health == 0
  # end


end



if __FILE__ == $0

include Attacker
# p generate_random_letter
attack_with_letter

end