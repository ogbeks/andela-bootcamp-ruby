def words (word_count)
  word_count.split.inject(Hash.new(0)) do |memo,ele|
    memo[ele] += 1
    memo
end
end
