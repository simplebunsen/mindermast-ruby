require './helper'
# All players, human or computer, inherit common functionality from here
class BasePlayer

  def initialize(humanity)
    @humanity = humanity
  end

  # implement rate, guess and make_code in the subclasses!!!

end

# Computer Player that plays algorithmically
class CPUPlayer < BasePlayer
  def initialize()
    super(false)
  end

  def rate(board)
    # big algorithm
    code = board.code
    current_space = board.current_space
    num_place_color = guess.reduce do |acc, el|
      if el.guess
        #continue heeere!
      end
    end
  end

  def guess
    # big algorithm
    rating = [1, 0, 0, 1] # sample
  end

  def make_code
    15 # temp, make code here
  end
end

# Human Player that plays via input
class HumanPlayer < BasePlayer
  def initialize
    super(true)
  end

  def rate(*)
    puts 'How many pins are both the right place and the right color?'
    num_place_color = gets.chomp.to_i
    puts 'How many pins are the right color BUT not the right place?'
    num_color = gets.chomp.to_i
    InputHelper.rating_processing(num_place_color, num_color)
  end

  def guess
    puts 'guess like so: "red,blue,brown,green"'
    color_array = gets.chomp.split(',')
    InputHelper.color_to_internal(color_array)
  end

  def make_code
    puts 'Set a code like so: "red,blue,brown,green"'
    gets.chomp
  end
end