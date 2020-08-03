require_relative 'Player'
require_relative 'Game'
require_relative 'Clumsy_Player'
require_relative 'Berserk_Player'




knuckleheads = Game.new("Knuckleheads")
knuckleheads.load_players(ARGV.shift || "players.csv")

loop do
    puts "How many rounds? ('quit' to exit)"
    input = gets.chomp.downcase
    case input
    when /^\d+$/
        knuckleheads.play(input.to_i)
    when 'quit','exit'
        knuckleheads.print_stats
    else
        puts "Please enter a number or 'quit'."
    end
end
klutz = ClumsyPlayer.new("Klutz", 105)
berserker = BerserkPlayer.new("Berserker", 50)
knuckleheads.add_player(klutz)
knuckleheads.add_player(berserker)
knuckleheads.save_high_scores