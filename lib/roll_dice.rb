class Dice

  def roll
    result = rand(1..6)
  end

  def number_rolls(number)
    number.times { roll }
  end 

end
