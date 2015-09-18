require_relative"word_sorter"
describe "WordSorter" do
  def unsorted_words
    ["WORD", "wordsMith", "1woRdsmith","worD smith"].shuffle
  end

  it "can sort unsorted words" do
    expect(WordSorter.sort("word", unsorted_words)).to eql(["word", "word smith", "wordsmith", "1wordsmith"])
  end

  it "can sort different unsorted words" do
    expect(WordSorter.sort("ab", ["ab cd", "ab", "abduct", "last"])).to eql(["ab", "ab cd", "abduct", "last"])
  end
end
