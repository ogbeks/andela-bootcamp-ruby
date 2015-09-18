class Kaprekar
def matches(k)
  number = k.to_s, square = k**2, string_square = square.to_s
  first = string_square[0..(string_square.length/2 -1)]
  second = string_square[(string_square.length/2)..(string_square.length-1)]
  return (first.to_i + second.to_i) == k
end
end
