require './board'
require './players'
require './helper'


board = Board.new(5, "bepis")
board.print

# Where the game logic lives
class Game
  def initialize(gamemode)
    @gamemode = gamemode
  end

  def play()
    guesser, maker = nil
    case gamemode
    when 0
      guesser = HumanPlayer.new
      maker = CPUPlayer.new
    when 1
      maker = HumanPlayer.new
      guesser = CPUPlayer.new
    end
    Out.print_code_set_msg
    board = Board.new(6, 4, maker.set_code)
    Out.print_start_msg
    while board.can_guess
      board.fill_guess(guesser.guess)
      board.fill_rating(rater.rating)
      if board.guessed?
        break
      end
    end
    Out.print_win_msg
  end
end
