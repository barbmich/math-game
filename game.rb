require './question'
require './current_player'

class Game

  attr_accessor :turn

  def initialize
    @turn = true
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
      current_player(@turn)
      self.sum_question
      @turn = !@turn
    end

    winner = current_player(@turn)
    puts "#{winner.name} wins with a score of #{winner.lives.to_s}/3"

  end

end