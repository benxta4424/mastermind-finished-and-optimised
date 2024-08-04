require "./lib/player_class"
require "./lib/computer_class"

class ChooseTheCode
    #Choose code class
    def initialize
        @AVAILABLE_COLORS = %w[Red Blue Green Yellow Orange Purple]
        @player_object=Player.new
        @correct_positions=[]
        @correct_colors=[]
        @turns=0
        @guess=[]
    end
    
    def random_colors
        @AVAILABLE_COLORS.sample
    end

    def pick_colors
        color_picker=@player_object
        color_picker.player_choose_colors
    end

    def get_computer_choice
        if @correct_positions.nil?
            4.times do
                @guess<<random_colors
            end
        else 
            4.times do |index|
                if @correct_positions.include?(index)
                    next
                else
                    @guess<<random_colors
                end
            end
        end
        puts "The computer chose:#{@guess}"
    end

    def check_correct_positions(player_guess)
        player_guess.each_with_index do |item,index|
            @guess.each_with_index do |item2,index2|
                if item==item2 && index==index2
                    @correct_positions<<index2
                end
            end
        end
        puts @correct_positions
    end
    
        
    def play_game
        player_guess=pick_colors
        while @correct_positions.size<4 && @turns<12 
            @turns+=1
            get_computer_choice
            check_correct_positions(player_guess)
        end
    end
end

#doua correct_positions si doua @guess,cand la una ii dau clear o incarc pe cealalta