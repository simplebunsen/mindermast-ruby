require './board'
require './players'
require './helper'
require './output'

# Where the game logic lives
class Game
  def initialize(gamemode)
    @gamemode = InputHelper.parse_gamemode(gamemode)
    @board = nil
  end

  def play()
    guesser, maker = nil
    case @gamemode
    when 0
      guesser = HumanPlayer.new
      maker = CPUPlayer.new
    when 1
      maker = HumanPlayer.new
      guesser = CPUPlayer.new
    end

    play_loop(guesser, maker)
    Out.print_win_msg
  end

  def play_loop(guesser, maker)
    Out.print_code_set_msg
    @board = Board.new(6, 4, maker.make_code)
    Out.print_start_msg

    while @board.can_guess?
      @board.fill_guess(guesser.guess)
      @board.fill_rating(maker.rate)

      break if @board.guessed?
    end
  end
end
