require './question'

class Game

  attr_accessor :turn

  def initialize
    @turn = false
    @player1 = Player.new
    @player2 = Player.new
  end

  def sum_question
    puts "---- NEW TURN ----"
    new_question = Question.new
    puts "#{@current_player.name}: What does #{new_question.value1} plus #{new_question.value2.to_s} equals to?"
    answer = gets.chomp
    if answer.to_i == new_question.sum
      puts "YES! You are correct."
      puts "#{@player1.alt}: #{@player1.lives.to_s}/3 VS #{@player2.alt}: #{@player2.lives.to_s}/3"
    else
      puts "Seriously? No!"
      @current_player.remove_life
      puts "#{@player1.alt}: #{@player1.lives.to_s}/3 VS #{@player2.alt}: #{@player2.lives.to_s}/3"
    end
  end

  def run_game
  
    while @player1.lives > 0 && @player2.lives > 0

      @turn = !@turn
      if @turn then @current_player = @player1
      else @current_player = @player2
      end
      
      self.sum_question
    end

    if @player1.lives == 0
      puts "#{@player2.name} wins with a score of #{@player2.lives.to_s}/3"
    else
      puts "#{@player1.name} wins with a score of #{@player1.lives.to_s}/3"
    end

  end

end