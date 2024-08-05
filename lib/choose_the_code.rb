require "./lib/player_class"
require "./lib/computer_class"

class ChooseTheCode
  # Choose code class
  def initialize
    @AVAILABLE_COLORS = %w[Red Blue Green Yellow Orange Purple]
    @player_object = Player.new
    @correct_positions = []
    @correct_colors = []
    @correct_colors_wrong_positions = []
    @turns = 0
    @guess = []
  end

  def random_colors
    @AVAILABLE_COLORS.sample
  end

  def pick_colors
    color_picker = @player_object
    color_picker.player_choose_colors
  end

  def get_computer_choice
    @guess = []
    4.times do |index|
      @guess[index] = if @correct_positions.include?(index)
                        @correct_colors[index]
                      else
                        random_colors
                      end
    end
    puts "The computer chose: #{@guess}"
    @guess
  end

  def check_correct_positions(player_guess)
    @correct_positions.clear
    @correct_colors.clear

    player_guess.each_with_index do |item, index|
      if @guess[index] == item
        @correct_positions << index
        @correct_colors[index] = item
      end
    end
    @correct_positions
  end

  def check_correct_colors(player_guess)
    @guess.each_with_index do |item, _index|
      @AVAILABLE_COLORS.delete(item) unless player_guess.include?(item)
    end
  end

  def play_game
    player_guess = pick_colors

    while @correct_positions.size < 4 && @turns < 12
      @turns += 1
      get_computer_choice
      check_correct_positions(player_guess)
      check_correct_colors(player_guess)

      if @correct_positions.size == 4
        puts "The computer's winning guess was:#{@guess}"
        puts "The computer managed to guess your colors! You lost!"
        break
      elsif @turns > 12
        puts "The computer failed to guess your colors! You won!"
        break
      end
    end
  end
end
