require "./player.rb"
require "./question.rb"
require "./game.rb"

player_1 = Player.new("Hilora")
player_2 = Player.new("Custard")

game = Game.new(player_1, player_2)

while !game.winner
  game.next_player
  game.next_turn
  game.check_for_winner
end

game.declare_winner
