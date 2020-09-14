
class Turn

  def initialize(bool)
    @turn = !bool
  end

  if @turn then @current_player = @player1
  else @current_player = @player2
  end
  
end