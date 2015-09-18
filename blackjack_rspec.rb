require_relative "blackjack"
RSpec.describe 'BlackJack Scorer' do

  it 'should return 11 for ["A"]' do
    expect(scoreHand(['A'])).to be(11)
  end

  it 'should return 21 for ["A", "Q"]' do
    expect(scoreHand(['A', 'Q'])).to be(21)
  end

  it 'should return 12 for ["A", "10", "A"]' do
    expect(scoreHand(['A', '10', 'A'])).to be(12)
  end

  it 'should return 16 for ["3", "5", "8"]' do
    expect(scoreHand(['3', '5', '8'])).to be(16)
  end

  it 'should return 20 for ["9", "10", "A"]' do
    expect(scoreHand(['9', '10', 'A'])).to be(20)
  end

  it "should return 25 for ['5', '4', '3', '2', 'A', 'K']" do
    expect(scoreHand(["5", "4", "3", "2", "A", "K"])).to be(25)
  end
end
