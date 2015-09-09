class Selector
 def even_select(numbers)
   numbers.select { |num| num%2 ==0  }
 end
 def odd_select(numbers)
   numbers.select {|num| num%2 !=0 }
 end
 def three_letter_select(words)
   words.select { |word| word.length ==3  }
 end
 def greater_than_three(words)
   words.select { |word| word.size>3  }
 end
 def end_with_ing(words)
   words.select { |word| word[-3,3]=="ing"  }
 end
 def pick_floats(numbers)
   numbers.select {|num| num.class == Float}
 end
end
