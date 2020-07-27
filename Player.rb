class Player
    
    attr_reader :health
    attr_accessor :name

    def <=>(other)
        other.score <=> score
    end
    
    def initialize(name, health=100)
        @name = name.capitalize
        @health = health
    end

    def score
        @health + @name.length 
    end

    def wOOt
        @health += 15
        puts "#{@name} got wOOted!"
    end

    def blam
        @health -= 10
        puts "#{@name} got blammed!"
    end

    def to_s
        "I'm #{@name} with a health of #{@health} and a score of #{@score}."
    end

    def strong?
        @health > 100
    end
end

if __FILE__ ==$0
    player = Player.new("moe")
    puts player.name
    puts player.health
    player.wOOt
    puts player.health
    player.blam
    puts player.health
end