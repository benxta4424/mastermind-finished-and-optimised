class Player
    attr_accessor :name

    def initialize(nam)
        @name=nam
    end

    def player_choose_colors
        colors=[]
        color_pick=''
        index=1
        print "What colors do you want to choose:"
        puts 
        4.times do 
            print "Culoarea #{index}:"
            color_pick=gets.chomp.to_s
            colors<<color_pick
            index+=1
            puts
        end
        puts colors
    end

end