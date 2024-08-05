require "./lib/guess_the_code"
require "./lib/choose_the_code"

option = nil

while option != 1 && option != 2
  puts "!!    GAME MENU   !!"
  puts "1.Crack the code"
  puts "2.Chose the code"
  print "Choose a game-mode:"
  option = gets.chomp.to_i

  puts

  case option
  when 1
    game = GuessTheCode.new
    game.start_game_as_guesser
  when 2
    game = ChooseTheCode.new
    game.play_game
  else
    puts "Wrong answer! its either 1 or 2! Please pick again!"
  end

end
