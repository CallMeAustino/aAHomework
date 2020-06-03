class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play

  end

  def take_turn
    self.show_sequence
    self.require_sequence
    self.round_success_message
    self.add_random_color
    self.game_over_message if @seq.length == 10
    self.take_turn
  end

  def show_sequence
    seq.each {|color| puts color}
  end

  def require_sequence
    count = 0
    idx = 0
    until count == seq.length
      puts "Return the sequence in order!"
      guess = gets.chomp
      return game_over_message if seq[idx] != guess
      count += 1
      idx += 1
    end
  end
      

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Good job!"
  end

  def game_over_message

  end

  def reset_game

  end
end
