module TypeHelper
  TYPE_GUESS = 'Codebreaker'.freeze
  TYPE_MAKER = 'Codemaker'.freeze
end

# All players, human or computer, inherit common functionality from here
class BasePlayer
  attr_accessor :type

  def initialize(type, humanity)
    @type = type
    @humanity = humanity
  end

  def ==(other)
    @type == other.type
  end

  def rate

  end
  
  def guess

  end
end

# Computer Player that plays algorithmically
class CPUPlayer < BasePlayer
  def initialize(type)
    super(type, false)
  end
end

# Human Player that plays via input
class HumanPlayer < BasePlayer
  def initialize(type)
    super(type, humanity)
  end
end

# A board in which live the guess spaces and the mastermind code 
class Board
  def initialize(spaces, code)
    @board = Array.new(spaces) { BoardSpace.new }
    @code = code
  end
end

# A space / line where a guess and a rating live
class BoardSpace
  def initialize
    @space = { guess: Array.new(4), rating: Array.new(4) }
  end

  def guess=(guess)
    return unless guess.count == 4

    @space.guess = guess
  end

  def rating=(rating)
    return unless rating.count == 4

    @space.rating = rating
  end
end
