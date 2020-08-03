require_relative 'Player'
require_relative 'die'
require_relative 'game_turn'
require_relative 'Treasure_Trove'

class Game
    
    attr_accessor :title

    def initialize(title)
        @title = title
        @players = []
    
    end

    def add_player(a_player)
        @players.push(a_player)
    end

    def high_score_entry(player)
        formatted_name = player.name ljust(20, '.')
        file.puts "#{formatted_name}, #{player_score}"
    end

    def load_players(file)
        File.readlines(file).each do |line|
            add_player(Player.from_csv(line))
        end
    end

    def save_high_scores(file)
        File.open(to_file, "w") do |file|
            file.puts "#{@title} High Scores:"
            @players.sort.each do |player|
                file.puts high_score_entry(player)
            end
        end
    end

    def play(rounds)
        puts "There are #{@players.size} players in #{@title}."
        
        @players.each do |player|
            puts player
        end
        
        treasures = TreasureTrove::Treasures

        puts "There are #{treasures.size} treasures to be found:"
        treasures.each do |treasure|
            puts "A #{treasure.name} is worth #{treasure.points} points"
        end

        1.upto(rounds) do |round|
            @players.each do |player|
                GameTurn.take_turn(player)
                puts player
            end
        end

        # 1.upto(rounds) do |round|
        #     if block_given?
        #         break if yield
        #     end
        #     knuckleheads.play(10) do
        #         knuckleheads.total_points >= 2000
        #     end
        # end

    end

    def print_name_and_health(player)
        puts "#{player.name} (#{player.health})"
    end

    def print_stats
        strong_players = @players.select { |player| player.strong?}
        wimpy_players = @players.reject { |player| player.strong?}

        puts "\n#{@title} Statistics:"

        puts "\n#{strong_players.size} strong players:"
        strong_players.each do |player|
            print_name_and_health(player)
        end

        puts "\n#{wimpy_players.size} wimpy players:"
        wimpy_players.each do |player|
            print_name_and_health(player)
        end
        
        @players.sort.each do |player|
            puts "\n#{player.name}'s point totals:"
            player.each_found_treasure do |treasure|
                puts "#{treasure.points} total #{treasure.name} points"
            end
            puts "#{player.points} grand total points"
        end
        
        puts "\n#{@title} High Scores:"
            @players.sort.each do |player|
            puts high_score_entry(player)
        end
    end
end