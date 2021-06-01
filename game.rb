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

# A board in which live the guess spaces and the mastermind code 
class Board
  def initialize(spaces, code)
    @board = Array.new(spaces) { BoardSpace.new }
    @code = code
  end

  def print
    puts '-- CURRENT BOARD --'
    @board.each do |space|
      space.print_space
    end
  end
end

# A space / line where a guess and a rating live
class BoardSpace
  def initialize
    @space = { guess: Array.new(4) { String.new('O') }, rating: Array.new(4) { String.new('o') } }
  end

  def guess=(guess)
    return unless guess.count == 4

    @space.guess = guess
  end

  def rating=(rating)
    return unless rating.count == 4

    @space.rating = rating
  end

  def print_space
    @space[:guess].each { |e| print "[#{e}] " }
    print '|| '
    @space[:rating].each { |e| print "(#{e}) " }
    puts
  end
end


board = Board.new(5, "bepis")
board.print