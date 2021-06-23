# A board in which live the guess spaces and the mastermind code 
class Board
  attr_reader :code

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
    puts 'saving guess now'
    @board[current_guess].guess = InputHelper.color_to_internal(guess)
  end

  def fill_rating(rating)
    rating.push(0) until rating.count == @slots

    @board[current_guess].rating = rating
    advance_cur_guess
  end

  def advance_cur_guess
    @current_guess += 1
  end

  def can_guess?
    @current_guess < @total_guesses
  end

  def guessed?
    @board[@current_guess - 1].rating == [2, 2, 2, 2]
  end

  def current_space
    @board[current_guess]
  end

  def current_guess
    current_space[:guess]
  end
end

# A space / line where a guess and a rating live
class BoardSpace
  def initialize(slots)
    @space = { guess: Array.new(slots) { String.new('O') }, rating: Array.new(slots) { String.new('o') } }
    @slots = slots
  end

  def guess=(guess)
    @space[:guess] = guess
  end

  def rating=(rating)
    @space[:rating] = rating
  end

  def guess
    @space[:guess]
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
