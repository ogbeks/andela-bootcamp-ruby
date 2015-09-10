class Array
  def new_flatten
    a=[]
    self.each do |ele|
      if ele.is_a?(Array)
        a= a+ ele.new_flatten
      else
        a << ele
      end
    end
    a
  end
end
p [2,3,[4,5,[4,55,[5,6]]]].new_flatten
