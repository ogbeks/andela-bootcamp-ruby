#require "pry"
def flatten_array (value, collector = [])
  if(value.is_a?(Array))
    value.each {|array_to_check| flatten_array(array_to_check, collector)}
  else
    collector << value
    end
collector
end
flatten_array([2,3,[4,5,[4,55,[5,6]]]])
