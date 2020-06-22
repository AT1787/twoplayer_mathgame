require './players'
require './questions'




class Game
    attr_accessor :p1, :p2, :current_player

    def start 
        p1 = Players.new('Player 1')
        p2 = Players.new('Player 2')
        current_player = p1
    
        while current_player.score < 3
            runGame = Questions.new()
            puts "---- NEW TURN ----"
            print current_player.name + ", "
            if runGame.ask
               puts "YOU WIN"
               current_player.score += 1
               puts "P1: #{p1.score}/3 vs P2: #{p2.score}/3"

               if current_player == p1
                  current_player = p2
               else 
                  current_player = p1
               end

            else 
                puts "YOU LOSE"
                puts "P1 #{p1.score}/3 vs P2 #{p2.score}/3"
                if current_player == p1
                    current_player = p2
                else 
                   current_player = p1
            end
         end
      end
  end
end


newGame = Game.new()
newGame.start



