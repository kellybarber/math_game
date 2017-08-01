
class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end

end


module Question

  attr_accessor :lives

  def initialize
    @lives = 3
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
     @lives -= 1
   end
 end

end

class Game

  include Question

  def player(player)
    @player = player
  end

end

# player_1 = Person.new
# game_1 = Question.new
#
# game_1.question
#
# while game_1.lives > 0
#   game_1.question
# end
