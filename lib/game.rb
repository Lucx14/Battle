class Game

  attr_reader :player_1, :player_2
  attr_accessor :turn

  def initialize(player1, player2)
    @player_1 = player1
    @player_2 = player2
    @turn = player1
  end


  def attack(player)
    player.receive_damage
  end

  def switch_turns
    if @turn == @player_1
      @turn = @player_2
    else
      @turn = @player_1
    end

  end


end
