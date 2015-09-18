[1,2,2,3,3].inject(Hash.new) do |memo,ele|
    memo[ele] = (memo[ele].to_i)+1
    memo
end
[1,2,2,3,4,3].inject(Hash.new(0)) do |memo,ele|
    memo[ele] += 1
    memo
end
[1,2,3,4,5].reduce do |memo,ele|
    memo = memo + ele
    memo
end
