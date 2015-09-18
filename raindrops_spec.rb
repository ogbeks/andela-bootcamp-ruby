describe "RainDrops" do
  it "can convert 1" do
    expect(Raindrops.convert(1)).to eql("1")
  end

  it "can convert 3" do
    expect(Raindrops.convert(3)).to eql("Pling")
  end

  it "can convert 5" do
    expect(Raindrops.convert(5)).to eql("Plang")
  end

  it "can convert 7" do
    expect(Raindrops.convert(7)).to eql("Plong")
  end

  it "can convert 6" do
    expect(Raindrops.convert(6)).to eql("Pling")
  end

  it "can convert 9" do
    expect(Raindrops.convert(9)).to eql("Pling")
  end

  it "can convert 10" do
    expect(Raindrops.convert(10)).to eql("Plang")
  end

  it "can convert 14" do
    expect(Raindrops.convert(14)).to eql("Plong")
  end

  it "can convert 15" do
    expect(Raindrops.convert(15)).to eql("PlingPlang")
  end

  it "can convert 21" do
    expect(Raindrops.convert(21)).to eql("PlingPlong")
  end

  it "can convert 25" do
    expect(Raindrops.convert(25)).to eql("Plang")
  end

  it "can convert 35" do
    expect(Raindrops.convert(35)).to eql("PlangPlong")
  end

  it "can convert 49" do
    expect(Raindrops.convert(49)).to eql("Plong")
  end

  it "can convert 52" do
    expect(Raindrops.convert(52)).to eql("52")
  end

  it "can convert 105" do
    expect(Raindrops.convert(105)).to eql("PlingPlangPlong")
  end

  it "can convert 12121" do
    expect(Raindrops.convert(12121)).to eql("12121")
  end
end
