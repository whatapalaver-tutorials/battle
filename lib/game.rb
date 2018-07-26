class Game

  attr_reader :current_turn, :switch_turns, :next_player
  
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
    
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @current_turn = opponent(@current_turn)
  end

  def next_player
    @next_player = opponent(@current_turn)
  end

  def game_over?
    losing_players.any?
  end

  private
  
  def opponent(the_player)
    @players.reject { |player| player == the_player}.first 
  end

  def losing_players
    @players.select { |player| player.hit_points <=0 }
  end

end