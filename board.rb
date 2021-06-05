# A board in which live the guess spaces and the mastermind code 
class Board
  def initialize(guesses, slots, code)
    @board = Array.new(guesses) { BoardSpace.new(slots) }
    @slots = slots
    @code = code
    @current_guess = 0
    @total_guesses = guesses
  end

  def print
    puts '-- CURRENT BOARD --'
    @board.each do |space|
      space.print_space
    end
  end

  def fill_guess(guess)
    puts "guess stub"
    @current_guess += 1
  end

  def fill_rating(rating)
    puts "rating stub"
  end

  def can_guess?
    @current_guess < @total_guesses
  end

  def guessed?
    @board[@current_guess - 1].rating == [2, 2, 2, 2]
  end
end

# A space / line where a guess and a rating live
class BoardSpace
  def initialize(slots)
    @space = { guess: Array.new(slots) { String.new('O') }, rating: Array.new(slots) { String.new('o') } }
  end

  def guess=(guess)
    return unless guess.count == 4

    @space[:guess] = guess
  end

  def rating=(rating)
    return unless rating.count == 4

    @space[:rating] = rating
  end

  def rating
    @space[:rating]
  end

  def print_space
    @space[:guess].each { |e| print "[#{e}] " }
    print '|| '
    @space[:rating].each { |e| print "(#{e}) " }
    puts
  end
end
