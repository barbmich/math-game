class Player

  @@num_of_players = 0

  attr_reader :name, :alt
  attr_accessor :lives

  def initialize
    @@num_of_players += 1
    @name = "Player " + @@num_of_players.to_s
    @alt = "P" + @@num_of_players.to_s
    @lives = 3
  end

  def remove_life
    @lives -= 1
  end

end