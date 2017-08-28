puts "Hello and welcome to this fun math game"
prints "Player 1 : Please enter your name"
p1Name = gets.chomp
prints "Player 2 : Please enter your name"
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
      puts "#{player1.name} has #{player1.lives} lives and #{player2.name} has #{player2.lives} lives"
    end

    currentPlayer = (currentPlayer + 1) % 2
  end
