require 'roll_dice'

describe Dice do

  describe '#roll' do
    it 'rolls a dice' do
      expect(subject).to respond_to :roll
    end

    it 'gives me a number between 1 and 6' do
      allow(subject).to receive(:roll).and_return(4)
      expect(subject.roll).to eq 4
    end
  end

  describe '#number_dice' do
    it 'rolls 2 dice at the same time' do
      subject.number_dice(2)
      allow(subject).to receive(:roll).and_return(10)
      expect(subject.roll).to eq 10
    end
  end

  describe '#roll_history' do
    it 'stores each roll in an array' do
      subject.number_dice(1)
      roll1 = subject.roll
      expect(roll1).to be_instance_of(Array)
    end

    it 'rolls one dice twice and stores each result' do
      subject.number_dice(1)
      subject.roll
      subject.roll
      expect((subject.roll_history).count).to be 2
    end
  end

  describe '#score' do
    it 'returns a sum of 2 rolls' do
      roll1 = allow(subject).to receive(:roll).and_return(4)
      roll2 = allow(subject).to receive(:roll).and_return(2)
      expect(subject.score).to eq(6) 
    end
  end

end
