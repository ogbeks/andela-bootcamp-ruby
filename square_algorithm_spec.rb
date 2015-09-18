describe "Squares" do
  it "can square the sums of numbers up to 5" do
    expect(Squares.new(5).square_of_sums).to eql(225)
  end

  it "can sum the squares of numbers up to 5" do
    expect(Squares.new(5).sum_of_squares).to eql(55)
  end

  it "can calculate the difference of sums and squares of 5" do
    expect(Squares.new(5).difference).to eql(170)
  end

  it "can square the sums of numbers up to 10" do
    expect(Squares.new(10).square_of_sums).to eql(3025)
  end

  it "can sum the squares of numbers up to 10" do
    expect(Squares.new(10).sum_of_squares).to eql(385)
  end

  it "can calculate difference of sums and squares of 10" do
    expect(Squares.new(10).difference).to eql(2640)
  end

  it "can square the sums of numbers up to 100" do
    expect(Squares.new(100).square_of_sums).to eql(25502500)
  end

  it "can sum the squares of numbers up to 100" do
    expect(Squares.new(100).sum_of_squares).to eql(338350)
  end

  it "can calculate the difference of sums and squares of 100" do
    expect(Squares.new(100).difference).to eql(25164150)
  end

  it "can keep the differences consistent" do
    squares = Squares.new(10)

    expect(squares.difference).to eql(squares.difference)
  end
end
