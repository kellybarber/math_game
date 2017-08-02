require './player.rb'
require './game.rb'
require './turn.rb'

player_1 = Player.new("Player 1")
player_2 = Player.new("Player 2")
game_1 = Game.new(player_1, player_2)
turn = Turn.new

p game_1.game_loop(turn)
