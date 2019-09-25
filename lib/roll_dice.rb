class Dice

  attr_reader :dice_array, :total



  def initialize
    @dice_array = []
  end

  def number_dice(number)
    @min_number = number
    @max_number = (number.to_i * 6)
  end

  def roll
    @result = rand(@min_number.to_i..@max_number.to_i)
    @dice_array << @result
  end

  def roll_history
    @dice_array
  end

  def score
    total = 0
    @dice_array.each do |result|
      puts "Your current score is #{total += result}"
    end
    total
  end
end
