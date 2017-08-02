class Turn

  def question(player)

    number_1 = 1 + rand(20)
    number_2 = 1 + rand(20)
    sum = number_1 + number_2

    print "#{player.name}: "
    puts "What does #{number_1} + #{number_2} equal?"

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
