class Player
    
    attr_reader :health
    attr_accessor :name

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
        "I'm #{@name} with a health of #{@health}!"
    end
end

class Game
    
    attr_reader :title

    def initialize(title)
        @title = title
        @players = []
    
    end

    def add_player(a_player)
        @players.push(a_player)
    end

    def play
        puts "There are #{@players.size} players in #{@title}."
        
        @players.each do |player|
            puts player
        end
        @players.each do |player|
            player.blam
            player.wOOt
            player.blam
            puts player
        end
    end
end

player1 = Player.new("Moe")
player2 = Player.new("Larry")
player3 = Player.new("Curly")

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play

blanabapants = Game.new("Blanabapants")
blanabapants.add_player(player1)
blanabapants.add_player(player2)
player4 = Player.new("Snarf")
blanabapants.add_player(player4)
blanabapants.play
