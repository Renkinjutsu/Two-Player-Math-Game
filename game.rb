class Game
    def initialize p1, p2
        @p1 = Player.new p1
        @p2 = Player.new p2
        @p1_wrong = 0
        @p2_wrong = 0
        @match_count = 0
    end

    def math_question player
        num1 = 1 + rand(20)
        num2 = 1 + rand(20)
        puts "#{player}: What does #{num1} plus #{num2} equal?"
        answer = num1 + num2
        player_answer = gets.chomp.to_i
        puts "#{player} your answer was #{player_answer == answer}"
        player_answer == answer
    end

    def rounds
        while @p1_wrong < 3 && @p2_wrong < 3
            puts "---------------- NEW TURN -----------------"
            if @match_count % 2 == 0 
                player = @p1.name
            else
                player = @p2.name
            end
        
            answer = math_question player
            if answer == false && @match_count % 2 == 0
                @p1_wrong += 1
            elsif answer == false && @match_count % 2 == 1
                @p2_wrong += 1
            end
            @match_count += 1
        end
        puts "---------------- GAME OVER -----------------"
        if @p1_wrong == 3
            puts "The winner is #{@p2.name}!!!!!"
        else
            puts "The winner is #{@p1.name}!!!!!"
        end
    end    
end