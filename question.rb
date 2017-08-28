class Question
  attr_accessor :answer, :print
  def initialize
    @num1 = rand(20) + 1
    @num2 = rand(20) + 1
    @operator = rand(3) + 1
    case @operator
    when 1
      @answer = @num1 + @num2
      @print = "What is the value of #{@num1} + #{@num2}?"
    when 2
      @answer = @num1 - @num2
      @print = "What is the value of #{@num1} - #{@num2}?"
    else
      @answer = @num1 * @num2
      @print = "What is the value of #{@num1} * #{@num2}?"
    end
  end
end