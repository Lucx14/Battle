class Game

  attr_reader :player_1, :player_2, :turn

  def initialize(player1, player2)
    @player_1 = player1
    @player_2 = player2
    @turn = player1
  end
  
  
  def attack(player)
    player.receive_damage
  end



end
