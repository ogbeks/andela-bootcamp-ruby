require_relative "rna_transcription"
describe "Complement" do
  it "should return guanine from cytosine" do
    expect(Complement.of_dna("C")).to eql("G")
  end

  it "should return cytosine from guanine" do
    expect(Complement.of_dna("G")).to eql("C")
  end

  it "should return adenine from thymine" do
    expect(Complement.of_dna("T")).to eql("A")
  end

  it "should return uracil from adenine" do
    expect(Complement.of_dna("A")).to eql("U")
  end

  it "should return rna complement" do
    expect(Complement.of_dna("ACGTGGTCTTAA")).to eql("UGCACCAGAAUU")
  end

  it "should return guanine dna from cytosine dna" do
    expect(Complement.of_dna("C")).to eql("G")
  end

  it "should return cytosine dna from guanine dna" do
    expect(Complement.of_dna("G")).to eql("C")
  end

  it "should return adenine dna from thymine dna" do
    expect(Complement.of_dna("T")).to eql("A")
  end

  it "should return uracil dna from adenine dna" do
    expect(Complement.of_dna("A")).to eql("U")
  end

  it "should return dna complement" do
    expect(Complement.of_dna("ACGTGGTCTTAA")).to eql("UGCACCAGAAUU")
  end

  it "should return argument error if you try to find complement of non-existent dna" do
    expect{Complement.of_dna("U")}.to raise_error("This is an invalid DNA letter")
  end

  it "should return argument error if you try to find complement of non-existent rna" do
    expect{Complement.of_rna("T")}.to raise_error("This is an invalid RNA letter")
  end
end
