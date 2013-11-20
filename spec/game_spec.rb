require 'game'

describe Game do

  describe '#score' do
    it "scores zero for a game where you only miss" do
      20.times do
        subject.roll 0
      end
      expect(subject.score).to eq 0
    end

    it "scores 20 for a game where you always knock down a single pin" do
      20.times do
        subject.roll 1
      end
      expect(subject.score).to eq 20
    end

    it "scores 16 for a game where you get a spare followed by 3 pins" do
      subject.roll 4
      subject.roll 6
      subject.roll 3
      17.times do
        subject.roll 0
      end
      expect(subject.score).to eq 16
    end

    it 'scores 24 for a game where you get a strike followed by 3 pins then 4 pins' do
      subject.roll 10
      subject.roll 3
      subject.roll 4
      16.times do
        subject.roll 0
      end
      expect(subject.score).to eq 24
    end
  end
end
