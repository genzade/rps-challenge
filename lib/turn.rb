class Turn
  RPS_RULES = {
    rock:     {rock: :draw, paper: :lose, scissors: :win, lizard: :win, spock: :lose},
    paper:    {rock: :win, paper: :draw, scissors: :lose, lizard: :win, spock: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw, lizard: :win, spock: :lose},
    lizard:   {rock: :lose, paper: :win, scissors: :lose, lizard: :draw, spock: :win},
    spock:    {rock: :win, paper: :lose, scissors: :win, lizard: :lose, spock: :draw}
  }

  attr_reader :name, :shape, :opposition_shape

  def initialize(options)
    @name = options["name"]
    @shape = options["shape"]
    @opposition_shape = options["opposition_shape"]
  end

  def winner?
    outcome == :win
  end

  def draw?
    outcome == :draw
  end

  def lose?
    outcome == :lose
  end

  private

  def outcome
    return if @opposition_shape.nil?
    RPS_RULES[@shape][@opposition_shape]
  end
end