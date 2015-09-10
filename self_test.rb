class Array
 def even_select
   self.select { |num| num%2 ==0  }
 end
 def odd_select
   self.select {|num| num%2 !=0 }
 end
 def three_letter_select
   self.select { |word| word.length ==3  }
 end
 def greater_than_three
   self.select { |word| word.size>3  }
 end
 def end_with_ing
   self.select { |word| word[-3,3]=="ing"  }
 end
 def pick_floats
   self.select {|num| num.class == Float}
 end

def flatten_array ( holder = self,collector = [])
  if(holder.is_a?(Array).!)
    collector << holder
  else
    holder.each {|array_to_check| flatten_array(array_to_check, collector)}
end
collector
end
end
p [1,2,3,4,5,6,7,8,9,10].even_select
p  ["bring", "finger", "drought", "singing", "bingo", "purposeful"].end_with_ing
p [2,3,[4,5,[4,55,[5,6]]]].flatten_array
