class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    # your code here
    return @array.reduce(:+) + initial_value unless block_given?
    sum = initial_value
    @array.each do |i|
      sum += yield(i)
    end
    sum
    end
end
