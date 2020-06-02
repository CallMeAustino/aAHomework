class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new}
    @cups.each_with_index do |cup,idx|
      if idx != 13 && idx != 6
        4.times do 
          cup << :stone
        end
      end  
    end
  end

  def place_stones
      # helper method to #initialize every non-store cup with four stones each
      
  end

  def valid_move?(start_pos)
    if start_pos > 14 || start_pos < 0 
      raise "Invalid starting cup"
    elsif @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    count = @cups[start_pos].length
    @cups[start_pos] = []
    current_cup_idx = start_pos
    until count == 0
      current_cup_idx += 1
      current_cup_idx = 0 if current_cup_idx == 14
      @cups[current_cup_idx] << :stone
      count -= 1
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
  end

  def winner
  end
end
