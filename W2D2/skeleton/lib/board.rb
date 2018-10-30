class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14){[]}
    @cups.each_with_index do |cup, i|
      4.times{cup << :stone} if i != 6 && i != 13
    end
    
  end

  def place_stones

  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos > @cups.length-1 || start_pos < 0
    raise 'Starting cup is empty' if @cups[start_pos].empty?

  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = nil
    i = 0
    until stones.empty?
      @cups[start_pos+i] << :stone
      stones.pop
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[6].empty? || @cups[13].empty?
    return false
  end

  def winner
    if one_side_empty?
      "#{name1}"
    else
      :draw
    end
  end

  def [](pos)
    row,col = pos
    @cups[row][col]
  end

  def []=(pos, value)
    row,col = pos
    @cups[row][col] = value
  end
end
