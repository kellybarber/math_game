class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def game_loop(turn)
    while @player1.lives > 0 && @player2.lives > 0
      turn.question(@player1)
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      puts "----- NEW TURN -----"
      if @player1.lives > 0
      turn.question(@player2)
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      puts "----- NEW TURN -----"
      end
    end

    if @player1.lives === 0
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    else
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end

  end

end
