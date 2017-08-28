puts "Hello and welcome to this fun math game"
prints "Player 1 : Please enter your name"
p1Name = gets.chomp
prints "Player 2 : Please enter your name"
p2Name = gets.chomp

require_relative 'question'
require_relative 'player'

player1 = Player.new(p1Name)
player2 = Player.new(p2Name)