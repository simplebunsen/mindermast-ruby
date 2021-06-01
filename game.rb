module TypeHelper
  TYPE_GUESS = 'Codebreaker'.freeze
  TYPE_MAKER = 'Codemaker'.freeze
end

# All players, human or computer, inherit common functionality from here
class BasePlayer
  attr_accessor :type

  def initialize(type)
    @type = type
  end

  def ==(other)
    @type == other.type
  end

  def rate

  end
  
  def guess
end

# Computer Player that plays algorithmically
class CPUPlayer < BasePlayer
  def initialize(type)
    @humanity = false
    super(type)
  end

end

# Human Player that plays via input
class HumanPlayer < BasePlayer
  def initialize(type)
    @humanity = true
    super(type)
  end
  
end

class Board
  def initialize
    @board = gen_board
  end
end

class BoardLine