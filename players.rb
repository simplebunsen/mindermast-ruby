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

  def rate()

    return #Rating Array
  end
  
  def guess

    return #Guess Array
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