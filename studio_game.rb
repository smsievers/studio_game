require relative 'Player'
require relative 'Game'


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
