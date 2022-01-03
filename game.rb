require './players'
require './question'

class Game

  def initialize
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end

  def start
    puts 'Start Game'
    turn

  end

  def turn
    @player_1.question
    @player_2.question
    puts '---------NEW-TURN---------'
  end
end