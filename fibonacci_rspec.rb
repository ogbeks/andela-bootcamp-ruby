describe "Fibonacci" do
  it "can output the fibonacci sequence for 5 numbers" do
    expect(Fibonacci.generate(5)).to eql([0,1,1,2,3])
    expect(Fibonacci.generate(5).last).to eql(3)
    expect(Fibonacci.generate(5)[-2]).to eql(2)
    expect(Fibonacci.generate(5)[2]).to eql(1)
  end

  it "can output the fibonacci sequence for 20 numbers" do
    expect(Fibonacci.generate(20)).to eql([0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181])
    expect(Fibonacci.generate(20).last).to eql(4181)
    expect(Fibonacci.generate(20)[-2]).to eql(2584)
    expect(Fibonacci.generate(20)[5]).to eql(5)
    expect(Fibonacci.generate(20)[6]).to eql(8)
    expect(Fibonacci.generate(20)[7]).to eql(13)
    expect(Fibonacci.generate(20)[-3]).to eql(1597)
  end

  it "can output the fibonacci sequence for 50 numbers" do
    expect(Fibonacci.generate(50)).to eql([0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, 2971215073, 4807526976, 7778742049])
    expect(Fibonacci.generate(50).last).to eql(7778742049)
    expect(Fibonacci.generate(50).count).to eql(50)
    expect(Fibonacci.generate(50)[24]).to eql(46368)
    expect(Fibonacci.generate(50)[12]).to eql(144)
  end
end
