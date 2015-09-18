class Squares
  def initialize( number)
  @natural_number =number
  end
  def num
    @natural_number
  end
  def square_of_sums
    sum_of_nth_number = 0
    (0..num).each do |x|
      sum_of_nth_number +=x
    end
    sum_of_nth_number**2
  end
  def sum_of_squares
    number_square_array = []
     (0..num).each do |x|
      number_square_array << x**2
    end
    number_square_array.reduce(:+)
  end
  def difference
     square_of_sums-sum_of_squares
  end
end
