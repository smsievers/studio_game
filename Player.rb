require_relative "treasure_trove"
require_relative 'playable'
class Player
    include Playable
    attr_accessor :name, :health

    def <=>(other)
        other.score <=> score
    end
    
    
    def initialize(name, health=100)
        @name = name.capitalize
        @health = health
        @found_treasures = Hash.new(0)
    end

    def self.from_csv(string)
        name, health = string.split(',')
        Player.new(name,Integer(health))
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

    def to_s
        "I'm #{@name} with a health of #{@health}, points of #{points} and a score of #{score}."
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