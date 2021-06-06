require './game'

puts "what gamemode do ya want (quit to quit)"
while input = gets.chomp
  break if input == "quit"
  game = Game.new(input)
  game.play
  puts "what gamemode do ya want (quit to quit)"
end