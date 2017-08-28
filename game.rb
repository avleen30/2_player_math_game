puts "Hello and welcome to this fun math game"
print "Player 1 : Please enter your name "
p1Name = gets.chomp
print "Player 2 : Please enter your name "
p2Name = gets.chomp

require_relative 'question'
require_relative 'player'

p1 = Player.new(p1Name)
p2 = Player.new(p2Name)

loop do
  #game reset
  currentPlayer = 1
  p1.reset
  p2.reset

  loop do
    break unless (p1.is_alive && p2.is_alive)
    player = (currentPlayer == 1) ? p1 : p2

    question = Question.new()
    puts "#{player.name}: #{question.print}"
    ans = gets.chomp.to_i
    if ans == question.answer
      player.score += 1
    else
      player.lives -= 1
      puts "#{p1.name} has #{p1.lives} lives and #{p2.name} has #{p2.lives} lives"
    end

    currentPlayer = (currentPlayer + 1) % 2
  end

  # End of game.
  if p1.lives == 0
    puts "#{p1.name} has lost!"
  else
    puts "#{p2.name} has lost!"
  end

  puts "#{p1.name}'s score is #{p1.score} and #{p2.name}'s score is #{p2.score}"

  print 'Type yes to play again or any key to end the game: '
  restart = gets.chomp
  break unless restart == "yes"
end

puts "Game Over!"
