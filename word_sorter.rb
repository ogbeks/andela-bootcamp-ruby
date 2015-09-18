class WordSorter
  def self.sort(word_to_search, word_library)
  word_library.map!{|word| word.downcase}
 arr = word_library.sort!
 array_arranged =arr.select{|x| x.chars[0].to_i.to_s!=x.chars[0]} + arr.select{|x| x.chars[0].to_i.to_s==x.chars[0]}
 array_arranged
  end
end
