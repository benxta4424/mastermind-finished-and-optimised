require "./lib/choose_the_code"
class Computer
  def initialize
    @AVAILABLE_COLORS = %w[Red Blue Green Yellow Orange Purple]
  end

  def computer_pick_colors
    computer_colors = []
    4.times do
      sample_colors = @AVAILABLE_COLORS.sample
      computer_colors << sample_colors
    end
    puts "Computer colors:#{computer_colors}"
    computer_colors
  end

end
