require_relative 'player'
require_relative 'die'
require_relative 'loaded_die'
require_relative 'treasure_trove'

module GameTurn
    def self.take_turn(player)
        
        die = Die.new
        number_rolled = die.roll
        case die.roll
        when 1..2
            player.blam            
        when 3..4
            puts "#{player.name} was skipped"
        else
            player.wOOt
        end
        
        treasure = TreasureTrove::Treasures.sample
        player.found_treasure(treasure)
    end
end