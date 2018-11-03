class Board
    attr_accessor :cups
    
    def initialize(name1, name2)
        @cups = Array.new(14){[]}
        @cups.each_with_index do |cup, i|
            if (0..5).to_a.include?(i) || (7...13).to_a.include?(i)
                4.times {cup << :stone}
            end
        end
        @name1 = name1
        @name2 = name2
        @current_player_name = name1
    end
    
    def place_stones
        # helper method to #initialize every non-store cup with four stones each
    end
    
    def valid_move?(start_pos)
        raise 'Invalid starting cup' if !(0..13).include?(start_pos)
        raise 'Starting cup is empty' if @cups[start_pos].empty?
        true
    end
    
    def make_move(start_pos, current_player_name)
        num_of_stones = @cups[start_pos].count
        @cups[start_pos] = []
        i = start_pos + 1
        
        if current_player_name == @name1
            opponents_cup_ndx =  13
            else
            opponents_cup_ndx =  6
        end
        
        until num_of_stones == 0
            i = i % 13
            if i != opponents_cup_ndx
                @cups[i] << :stone
                num_of_stones -= 1
            end
            i += 1
        end
        #render
        next_turn(i-1)
    end
    
    def next_turn(ending_cup_idx)
        # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
        current_cup = @cups[ending_cup_idx]
        if current_cup.empty?
            return :switch
        end
    end
    
    def render
        print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
        puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
        print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
        puts ""
        puts ""
    end
    
    
    
    
    
    
    def one_side_empty?
        player1_side_empty = @cups[0..5].all?{|cups| cups.empty?}
        player2_side_empty = @cups[7..12].all?{|cups| cups.empty?}
        player1_side_empty || player2_side_empty
        
    end
    
    def winner
        six_stone_cup = [:stone, :stone, :stone, :stone, :stone, :stone]
        return :draw if @cups[6] == six_stone_cup && @cups[13] == six_stone_cup
        return @current_player_name
    end
end
