class Question
  attr_reader :ask, :answer

  def initialize
    @operand_1 = rand(1..20)
    @operand_2 = rand(1..20)
    @ask = "What does #{@operand_1} plus #{@operand_2} equal?"
    @answer = @operand_1 + @operand_2
  end
end