require_relative 'Player'

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