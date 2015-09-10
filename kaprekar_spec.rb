require_relative "kaprekar"
RSpec.describe "Kaprekar" do
  it "9 is a kaprekar number hence must return true" do
    subject = Kaprekar.new
    matches = subject.matches(9)
    expect(matches).to be true
  end
it "55 is a kaprekar number hence must return true" do
  subject = Kaprekar.new
  matches = subject.matches(55)
  expect(matches).to be true
end
it "297 is a kaprekar number hence must return true" do
  subject = Kaprekar.new
  matches = subject.matches(297)
  expect(matches).to be true
end
it "703 is a kaprekar number hence must return true" do
  subject = Kaprekar.new
  matches = subject.matches(703)
  expect(matches).to be true
end
it "46 is not a kaprekar number hence must return false" do
  subject = Kaprekar.new
  matches = subject.matches(46)
  expect(matches).to be false
end
it "90 is not a kaprekar number hence must return false" do
  subject = Kaprekar.new
  matches = subject.matches(90)
  expect(matches).to be false
end
end
