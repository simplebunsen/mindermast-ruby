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

  def rate(array_from_subclasses)
    array_from_subclasses
  end
  
  def guess(array_from_subclasses)
    array_from_subclasses
  end
end

# Computer Player that plays algorithmically
class CPUPlayer < BasePlayer
  def initialize()
    super(false)
  end

  def rate()
    #big algorithm
    rating = [1, 0, 0, 1] #sample
    super(rating)
  end

  def guess()
    #big algorithm
    rating = [1, 0, 0, 1] #sample
    super(rating)
  end

  def make_code()
    15 # temp, make code here
  end
end

# Human Player that plays via input
class HumanPlayer < BasePlayer
  def initialize)
    super(humanity)
  end
end