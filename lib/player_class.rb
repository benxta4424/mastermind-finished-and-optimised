require "./lib/computer_class"
class Player
  attr_accessor :name, :correct_colors, :correct_positions

  def player_choose_colors
    colors = []
    color_pick = ""
    index = 1
    print "What colors do you want to choose:"
    puts
    4.times do
      print "Culoarea #{index}:"
      color_pick = gets.chomp.to_s
      colors << color_pick
      index += 1
      puts
    end
    puts "Player colors:#{colors}"
    colors
  end

  def player_guessing_colors
    chosen_colors = []
    index = 1
    4.times do
      print "Guess nr #{index}:"
      chosen_colors << gets.chomp.to_s
      index += 1
    end
    chosen_colors
  end
end
