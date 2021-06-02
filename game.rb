require './board'
require './players'
require './helper'


board = Board.new(5, "bepis")
board.print
puts "\e[0;35m this is a purple text \e[0m\n"

class Game 
  def initialize(gamemode)
    @gamemode = gamemode

  end

end