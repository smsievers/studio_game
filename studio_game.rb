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

player1 = Player.new("Moe")
player2 = Player.new("Larry")
player3 = Player.new("Curly")

players = [player1, player2, player3]

puts "There are #{players.size} players in the game."

players.each do |player|
    puts player
    player.blam
    player.wOOt
    player.blam
    puts player.health
end
players.pop
player4 = Player.new("Shemp")
players.push(player4)