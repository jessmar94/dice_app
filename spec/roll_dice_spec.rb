require 'roll_dice'

describe Dice do

  describe '#roll' do
    it 'rolls a dice' do
      expect(subject).to respond_to :roll
    end

    it 'gives me a number between 1 and 6' do
      expect(subject.roll).to be <= 6
    end

    it 'rolls 2 dice at the same time' do
      subject.roll
      expect(subject.number_rolls(2)).to be <= 12
    end

    it 'rolls 4 dice at the same time' do
      subject.roll
      expect(subject.number_rolls(4)).to be <= (6*4)
    end
    #
    # it 'records each dice roll' do
    #   dice = Dice.new
    #   dice.number_dice(1)
    #   expect(dice.roll).to be_an_instance_of(Array)
    # end
  end
end
