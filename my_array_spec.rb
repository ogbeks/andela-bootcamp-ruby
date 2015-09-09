require_relative "my_array"
gem 'pry'

describe MyArray do
  before :each do
    @my_array = MyArray.new([1,2,3,4,5,"a"])
  end

  describe "#new" do
    it "takes one parameters and returns a MyArray object" do
      expect(@my_array).to be_a MyArray
    end
  end

  describe "#new_pop" do
    it "takes a new_pop method and returns the last item in the array" do
      last_item = @my_array.new_pop

      expect(last_item).to eql("a")
    end

    it "takes a new_pop method and reduces the array size by 1" do
      @my_array.new_pop

      expect(@my_array.new_size).to eql(5)
    end
  end
end
