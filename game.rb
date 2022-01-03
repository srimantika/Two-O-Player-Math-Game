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
 
  def show_stats
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
  end

  def winner(player)
    puts "#{player.name} wins with the score of #{player.lives}/3"
    puts '---------GAME-OVER--------'
    puts 'Good bye!'
    exit(0)
  end

  def check_score
    if @player_1.is_dead
      winner(@player_2)
    elsif @player_2.is_dead
      winner(@player_1)
    end
  end


# Calls the players turn by turn till one player loses all 3 lives
  def turn
    @player_1.question
    check_score
    @player_2.question
    check_score
    show_stats
    puts '---------NEW-TURN---------'
    turn
  end
end