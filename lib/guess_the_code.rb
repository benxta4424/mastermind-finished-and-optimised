require "./lib/player_class"
require "./lib/computer_class"

class GuessTheCode
  def initialize
    @turns = 0
    @correct_positions = []
    @corre_colors = []
    @player = Player.new
    @computer = Computer.new
  end

  def start_game_as_guesser
    computer = @computer
    computer_colors = computer.computer_pick_colors
    puts "The computer has chosen 4 colors. Good luck!"
    p computer_colors

    while @turns < 12 || @correct_positions.size < 4
      @correct_positions.clear
      @turns += 1
      puts "Player you have to guess 4 colors:"
      puts
      player_correctly_guessed_positions(computer_colors)
      player_correctly_guessed_colors(computer_colors)
      puts "You have guessed #{@turns} turns! You now have #{13 - @turns} turns left to guess!!"
      puts
      puts

      if @correct_positions.size == 4
        puts "You've won! Congratulations!"
        break
      elsif @turns > 12
        puts "You've lost! Better luck next time!"
        break
      end
    end
  end

  def player_correctly_guessed_positions(comp_colors)
    player = @player
    player_guess = player.player_guessing_colors
    @player_guessingg_colors = player_guess
    position_counter = 0

    player_guess.each_with_index do |item1, index1|
      comp_colors.each_with_index do |item2, index2|
        if item1 == item2 && index1 == index2
          @correct_positions << index2
          position_counter += 1
        end
      end
    end

    puts "You've got #{position_counter} positions right!"
    position_counter
  end

  def player_correctly_guessed_colors(comp_colors)
    player_guess = @player_guessingg_colors
    color_counter = 0

    player_guess.each_with_index do |items, index|
      color_counter += 1 if comp_colors.include?(items) && comp_colors[index] != items
    end

    puts "You've got #{color_counter} colors right!"
    color_counter
  end
end
