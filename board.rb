# A board in which live the guess spaces and the mastermind code 
class Board
  def initialize(guesses, slots, code)
    @board = Array.new(guesses) { BoardSpace.new(slots) }
    @slots = slots
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
  def initialize(slots)
    @space = { guess: Array.new(slots) { String.new('O') }, rating: Array.new(slots) { String.new('o') } }
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
