class Opponent

  SHAPE = [:rock, :paper, :scissors, :lizard, :spock]

  def shape
    SHAPE.sample
  end
end