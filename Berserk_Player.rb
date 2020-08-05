require_relative "Player"
class BerserkPlayer < Player
    def initialize(name, health)
        super(name, health)
        @w00t_count = 0
    end

    def berserk?
        @w00t_count > 5
    end

    def wOOt
        super
        @w00t_count += 1
        puts "#{@name} is berserk!" if berserk?
    end

    def blam
        berserk? ? wOOt : super
    end
end

if __FILE__ == $0
    berserker = BerserkPlayer.new("berserker", 50)
    6.times { berserker.w00t }
    2.times { berserker.blam }
    puts berserker.health
  end