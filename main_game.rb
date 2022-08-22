require_relative "Board.rb"


class Main_game
    def initialize
        @P1Board =Board.new("1", "2")
        @P2Board =Board.new("2", "1")
        self.turn1
    end
 
    def turn1
        @P2Board.enemyboard
        if @P2Board.won! == true
            puts "GAME OVER!"
        else
            self.turn2
        end
    end

    def turn2
        @P1Board.enemyboard
        if @P1Board.won! == true
            puts "GAME OVER!"
        else
            self.turn1
        end
    end
    
end

game = Main_game.new