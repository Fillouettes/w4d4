
class Array
   def my_uniq
      new_arr = []
      self.each {|el| new_arr << el if !new_arr.include?(el) }
      new_arr
   end

 # p [1, 2, 1, 3, 3].my_uniq # => [1, 2, 3]

   def two_sum
      new_arr = []

      self.each_with_index do |ele1, idx1|
          r = idx1 + 1
         while r < self.length 
            if ele1 + self[r] == 0
               new_arr << [idx1, r]
            end
            r += 1
         end
      end

      new_arr
   end

end

# p [-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]


# rows = [
#     [0, 1, 2],
#     [3, 4, 5],
#     [6, 7, 8]
#   ]
# cols = [
#     [0, 3, 6],
#     [1, 4, 7],
#     [2, 5, 8]
#   ]

#   cols[1] => [rows[0][1], rows[1][1], rows[2][1]]
#   for each row, take the element at the same index and make that a column

def my_transpose(matrix)
   new_arr = []

   (0...matrix.length).each do |i| #the index we are taking from each row (2)
      sub_arr = [] #empty subarray to make the next column
      matrix.each {|row| sub_arr << row[i] } #each row's element at 2
      new_arr << sub_arr #[2, 5, 8] == last column
   end

   new_arr
end

 # [buy day, sell day] ==> indexes

# assuming you buy 1 stock, profit is sell day - buy day
#  profit 6
# hash: {[0, 1] => -3, [0, 2] => -1, [0, 3] => 3, [1, 2] => 4, [1, 3] => 6, ..}


# hash[k, v] : value: [profit made] keys:[pair of days]
# return the value of the biggest key


def stock_picker(arr)
   hash = Hash.new

   arr.each_with_index do |stock_price, buy_day|
         sell_day = buy_day + 1
      while sell_day < arr.length 
         profit = arr[sell_day] - arr[buy_day]
         hash[[buy_day, sell_day]] = profit
         sell_day += 1
      end
   end
   biggest_profit = hash.values.max
   hash.key(biggest_profit)
end

# p stock_picker([6, 3, 7, 9]) #=> [1,3]