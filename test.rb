
class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end

end

class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def minus_life
    @player1.lives -= 1
  end

  def game_loop(turn)
    while @player1.lives > 0 || @player2.lives > 0
      turn.question(@player1)
      turn.question(@player2)
    end
  end

end

class Turn

  def question(player)

    number_1 = 1 + rand(20)
    number_2 = 1 + rand(20)
    sum = number_1 + number_2

    print "#{player}: "
    print "What does #{number_1} + #{number_2} equal?"

    print "> "
    answer = gets.chomp

    if answer.to_i === sum
      puts "Yes! You are correct!"
    else
      puts "Nope. That's dumb"
      player.lives -= 1
    end

  end

end



player_1 = Player.new
player_2 = Player.new

game_1 = Game.new(player_1, player_2)

turn = Turn.new

p game_1.game_loop(turn)
