class Player
  attr_reader :name, :lives_left

  def initialize(name)
    @name = name
    @lives_left = 3
  end

  def lose_life
    @lives_left -=1
  end
end