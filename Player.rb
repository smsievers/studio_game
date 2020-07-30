require_relative "treasure_trove"

class Player
    
    attr_reader :health
    attr_accessor :name

    def <=>(other)
        other.score <=> score
    end
    
    
    def initialize(name, health=100)
        @name = name.capitalize
        @health = health
        @found_treasures = Hash.new(0)
    end

    def found_treasure(treasure)
        @found_treasures[treasure.name] += treasure.points
        puts "#{@name} discovered a #{treasure.name} worth #{treasure.points} points!"
        puts "#{@name}'s treasures: #{@found_treasures}'"
    end

    def each_found_treasure
        @found_treasures.each do |name, points|
            yield Treasure.new(name, points)
        end
    end

    def points
        @found_treasures.values.reduce(0, :+)
    end
    def score
        @health + points
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
        "I'm #{@name} with a health of #{@health}, points of #{points} and a score of #{score}."
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