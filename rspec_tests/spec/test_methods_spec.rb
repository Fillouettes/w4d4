require "test_methods"

describe "#my_uniq" do
   it "removes duplicates from an array" do
      expect([3,4,6,6,1,8,2,3].my_uniq).to match_array([3,4,6,1,8,2])
   end
end

describe "#two_sum" do
   it "returns pairs of positions where the two elements sum to zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to match_array([[0, 4], [2, 3]])
   end
end

describe "#my_transpose" do
   it "takes a 2D array and reverses rows and columns" do
      rows = [ [0, 1, 2], [3, 4, 5], [6, 7, 8] ]
      cols = [ [0, 3, 6], [1, 4, 7], [2, 5, 8] ]
      expect(my_transpose(rows)).to match_array(cols)
   end
end

describe "#stock_picker" do
   it "takes an array of stock prices" do
      #expect array input to not raise error
      expect{ stock_picker([6, 3, 7, 9]) }.to_not raise_error
   end
   it "outputs most profitable pair of days" do
      expect(stock_picker([6, 3, 7, 9])).to match_array([1, 3])
      expect(stock_picker([5, 90, 3, 7, 3, 5, 8, 23, 8])).to match_array([0, 1])
      expect(stock_picker([3, 7, 3, 5, 8, 23, 8])).to match_array([0, 5])
   end
end