require_relative 'Player'
require_relative 'Game'


player1 = Player.new("Moe")
player2 = Player.new("Larry")
player3 = Player.new("Curly")

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play(4)

blanabapants = Game.new("Blanabapants")
blanabapants.add_player(player1)
blanabapants.add_player(player2)
player4 = Player.new("Snarf")
blanabapants.add_player(player4)
blanabapants.play(4)

knuckleheads.print_stats