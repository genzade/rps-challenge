class Turn
  RPS_RULES = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {paper: :draw, scissors: :lose, rock: :win},
    scissors: {scissors: :draw, rock: :lose, paper: :win}
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