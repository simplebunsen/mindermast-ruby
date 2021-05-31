module TypeHelper
  TYPE_GUESS = "Codebreaker".freeze
  TYPE_MAKER = "Codemaker".freeze
end

class PlayerType
  attr_accessor :type
  def initialize(type)
    @type = type
  end

  def ==(other)
    @type == other.type
  end
end

class BasePlayer
  def initialize()

  end

end

class CPUPlayer < BasePlayer

end

class HumanPlayer < BasePlayer

end