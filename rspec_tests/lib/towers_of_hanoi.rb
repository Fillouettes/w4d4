class Hanoi

    attr_reader :size

    def initialize(num=3)
        @size = num
        @matrix = Array.new(3) {Array.new(num)}
    end

end

(1..@size).each do |piece|
    @matrix[0].unshift(piece)
end



#towers of hanoi:
#three arrays that MUST ALWAYS be sorted biggest to smallest
#starting position: all elements are in first array
#you win when all elements in the last array, sorted
#legal moves must implement stack (last in first out), and must result in all
   #arrays being sorted

#options for each move: last element in each array
#chosen element can only be placed on array where last element is bigger than chosen

#2d array of 3 subarrays.


#start:
[3,2,1]
[]
[]

#first move: mtx[2] << mtx[0].pop
[3, 2]
[]
[1]

#second move: mtx[1] << mtx[0].pop
[3]
[2]
[1]

#third: mtx[1] << mtx[2].pop
[3]
[2, 1]
[]

#fourth: mtx[2] << mtx[0].pop
[]
[2,1]
[3]

#fifth: mtx[0] << mtx[1].pop
[1]
[2]
[3]

#sixth: mtx[2] << mtx[1].pop
[1]
[]
[3,2]

#end: mtx[2] << mtx[0].pop
[]
[]
[3, 2, 1]

#game.initialize(3): argument for amount of elements

#user input: num from 1 to 3, choose which stack to pop
   #part 2 of one turn: num from 1 to 3, choose which stack to push
      #raise error if chosen stack.last is greater than element
      #try again

#won? checks if last array contains all elements.

#game.run: user.take_turn until won?