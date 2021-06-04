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

  def rate
    # big algorithm
    rating = [1, 0, 0, 1] # sample
    super(rating)
  end

  def guess
    # big algorithm
    rating = [1, 0, 0, 1] # sample
    super(rating)
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

  def rate
    puts 'How many pins are both the right place and the right color?'
    num_place_color = gets.chomp.to_i
    puts 'How many pins are the right color BUT not the right place?'
    num_color = gets.chomp.to_i
    # TODO: map that to an array
    rating = [2, 2, 1, 0]
    return rating
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