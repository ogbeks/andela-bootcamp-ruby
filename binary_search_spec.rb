require_relative "array_range"
RSpec.describe "Binary Search Tests" do
  context "Binary Search to traverse an ordered list, effectively" do

    oneToTwenty = [].toTwenty;
    twoToForty = [].toForty;
    tenToOneThousand = [].toOneThousand;

    context "Populate the arrays with valid content" do
      it "should create an array from 1 to 20, with intervals of 1" do
        expect(oneToTwenty[0]).to eq 1
        expect(oneToTwenty[19]).to eq 20
        expect(oneToTwenty.length).to eq 20
        for i in 0...oneToTwenty.size-1
          expect(oneToTwenty[i+1] - oneToTwenty[i]).to eq 1
        end
      end

      it "should create an array from 2 to 40, with intervals of 2" do
        expect(twoToForty[0]).to eq 2
        expect(twoToForty[19]).to eq 40
        expect(twoToForty.length).to eq 20
        for i in 0...twoToForty.size-1
          expect(twoToForty[i+1] - twoToForty[i]).to eq 2
        end
      end

      it "should create an array from 10 to 1000, with intervals of 10" do
        expect(tenToOneThousand[0]).to eq 10
        expect(tenToOneThousand[99]).to eq 1000
        expect(tenToOneThousand.length).to eq 100
        for i in 0...tenToOneThousand.size-1
          expect(tenToOneThousand[i+1] - tenToOneThousand[i]).to eq 10
        end
      end
    end

    context "Get the index of the item with an expected number of loops in array [1, 2 . . . 20]" do
      it "should return {count: /* <= 4 */, index: 15} for 16" do
        result  = oneToTwenty.search(16)
        expect(result[:count]).to be < 5
        expect(result[:index]).to eq 15
      end

      it "should return {count: 1, index: 18} for 19" do
        result  = oneToTwenty.search(19)
        expect(result[:count]).to be < 2
        expect(result[:index]).to eq 18
      end

      it "should return {count: 0, index: 19} for 20" do
        result  = oneToTwenty.search(20)
        expect(result[:count]).to eq 0
        expect(result[:index]).to eq 19
      end

      it "should return {count: < /* array length */, index: -1} for 33" do
        result  = oneToTwenty.search(33)
        expect(result[:count]).to be < result[:length]
        expect(result[:index]).to eq -1
      end
    end

    context "Get the index of the item with an expected number of loops in array [2, 4 . . . 40]" do
      it "should return {count: /* <= 4 */, index: 15} for 16" do
        result  = twoToForty.search(16)
        expect(result[:count]).to be < 5
        expect(result[:index]).to eq 7
      end

      it "should return {count: 0, index: 9} for 20" do
        result  = twoToForty.search(20)
        expect(result[:count]).to eq 0
        expect(result[:index]).to eq 9
      end

      it "should return {count: 0, index: 19} for 40" do
        result  = twoToForty.search(40)
        expect(result[:count]).to eq 0
        expect(result[:index]).to eq 19
      end

      it "should return {count: < /* array length */, index: -1} for 33" do
        result  = twoToForty.search(33)
        expect(result[:count]).to be < result[:length]
        expect(result[:index]).to eq -1
      end
    end

    context "Get the index of the item with an expected number of loops in array [10, 20 . . . 1000]" do
      it "should return {count: /* <= 3 */, index: 3} for 40" do
        result  = tenToOneThousand.search(40)
        expect(result[:count]).to be < 4
        expect(result[:index]).to eq 3
      end

      it "should return {count: /* <= 5*/, index: 87} for 800" do
        result  = tenToOneThousand.search(880)
        expect(result[:count]).to be < 6
        expect(result[:index]).to eq 87
      end

      it "should return {count: < /* array length */, index: -1} for 10000" do
        result  = tenToOneThousand.search(10000)
        expect(result[:count]).to be < result[:length]
        expect(result[:index]).to eq -1
      end
    end

  end
end
