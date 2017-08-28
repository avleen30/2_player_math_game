class Player
  attr_accessor :lives, :score, :name
  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def reset
    @lives = 3
    @score = 0
  end

  def is_alive
    @lives > 0
  end
end