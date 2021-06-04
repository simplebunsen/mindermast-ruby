require './game'

puts "what gamemode do ya want"
while input = gets.chomp
  break if input == "quit"
  game = Game.new(input)
  game.play

end