class Player
  attr_reader :name, :lives_left, :points_scored
  attr_writer :lives_left, :points_scored

  def initialize(name)
    @name = name
    @lives_left = 3
    @points_scored = 0
  end

  def addPoint
    @points_scored += 1
  end

  def loseLife
    @lives_left -=1
  end
end