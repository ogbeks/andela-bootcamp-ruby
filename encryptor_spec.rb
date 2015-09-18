describe "Encryptor" do
  it "has a cipher" do
    expect(Encryptor.cipher).to eql(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"])
  end

  it "can encrypt a single letter x spaces forward" do
    expect(Encryptor.encrypt("a", 4)).to eql("e")
    expect(Encryptor.encrypt("c", 3)).to eql("f")
    expect(Encryptor.encrypt("g", 4)).to eql("k")
    expect(Encryptor.encrypt("z", 4)).to eql("d")
    expect(Encryptor.encrypt("z", 1)).to eql("a")
    expect(Encryptor.encrypt("z", 7)).to eql("g")
  end

  it "can encrypt two letters x spaces forward" do
    expect(Encryptor.encrypt("ab", 4)).to eql("ef")
    expect(Encryptor.encrypt("cd", 3)).to eql("fg")
    expect(Encryptor.encrypt("gl", 4)).to eql("kp")
    expect(Encryptor.encrypt("zb", 4)).to eql("df")
    expect(Encryptor.encrypt("zc", 1)).to eql("ad")
    expect(Encryptor.encrypt("ze", 7)).to eql("gl")
  end

  it "can encrypt four letters x spaces forward" do
    expect(Encryptor.encrypt("base", 4)).to eql("fewi")
    expect(Encryptor.encrypt("cram", 3)).to eql("fudp")
    expect(Encryptor.encrypt("glom", 4)).to eql("kpsq")
    expect(Encryptor.encrypt("turn", 4)).to eql("xyvr")
  end

  it "can decyprt 4 letters x spaces" do
    expect(Encryptor.decrypt("fewi", 4)).to eql("base")
    expect(Encryptor.decrypt("fudp", 3)).to eql("cram")
    expect(Encryptor.decrypt("kppq", 4)).to eql("gllm")
    expect(Encryptor.decrypt("dfeo", 4)).to eql("zbak")
  end
end
