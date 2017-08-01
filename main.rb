
class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end

end


# module Question
#
#   def question
#
#     number_1 = 1 + rand(20)
#     number_2 = 1 + rand(20)
#     sum = number_1 + number_2
#
#     print "What does #{number_1} + #{number_2} equal?"
#
#     print "> "
#     answer = gets.chomp
#
#     if answer.to_i === sum
#       puts "Yes! You are correct!"
#       true
#     else
#       puts "Nope. That's dumb"
#       false
#     end
#  end
#
# end

class Turn

  attr_accessor :player

  def player_turn(player)
    @player = player
  end

  def question

    number_1 = 1 + rand(20)
    number_2 = 1 + rand(20)
    sum = number_1 + number_2

    print "What does #{number_1} + #{number_2} equal?"

    print "> "
    answer = gets.chomp

    if answer.to_i === sum
      puts "Yes! You are correct!"
    else
      puts "Nope. That's dumb"
      @player.lives -= 1
    end
  end

  def turn
    while @player_1.lives > 0
      puts "Player 1: #{question}"

    end
  end

end


player_1 = Player.new
player_2 = Player.new
turn_1 = Turn.new
turn_2 = Turn.new

turn_1.player_turn(player_1)
turn_2.player_turn(player_2)
