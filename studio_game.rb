class Player
    def initialize(name, health=100)
        @name = name.capitalize
        @health = health
    end

    attr_reader :health
    attr_accessor :name

    def score
        @health + @name.length 
    end

    def say_hello
        puts "Hi, I'm #{@name} with a health of #{@health}!"
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
    def initialize(title)
        @title = title
        @players = []

    attr_reader :title

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

player1 = Player.new("Moe")
player2 = Player.new("Larry")
player3 = Player.new("Curly")

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play