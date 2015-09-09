class Mapper
def capitalize_names (names)
names.map! {|name| name.capitalize }
names
end
def double_numbers(numbers)
numbers.map! {|num| num * 2}
end

def square_numbers(numbers)
numbers.map! {|num| num**2}
end
def calc_lengths(names)
names.map! {|name| name.size}
end
def trim_names(names)
  names.each do |name|
    name.slice!(-1)
  end
  names
#names.map! {|name| name.slice!(-1)}
end
end
