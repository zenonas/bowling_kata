class Game

  FRAME_STARTS = [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]

  def initialize
    @rolls = []
  end
  def roll(number_of_pins)
    @rolls << number_of_pins
  end

  def score
    FRAME_STARTS.map do |frame_index|
      frame_score = @rolls[frame_index] + @rolls[frame_index + 1]
      frame_score += @rolls[frame_index + 2] if frame_score == 10
      frame_score
    end.reduce(:+)
  end
end
