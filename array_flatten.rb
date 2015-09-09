#require "pry"

def input_array (array_to_flatten)
  array_flatten = []
  array_to_flatten.each do |thing|
    #binding.pry
   array_flatten << thing
=begin
    while thing.class == Array do
      thing.each do |i|
        binding.pry
        array_flatten << i
      end
  end
=end
end
 array_to_flatten
end
 input_array([1,2,3,[4,5]])
#puts input_array([1,2,3,[4,5]])
