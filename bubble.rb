# implementation of bubble sort on an array
class BubbleSort
  def initialize(input_array)
    @input = input_array
    @flipping = true
  end

  def sort
    while @flipping
      @flipping = false
      (@input.length - 1).times do |i|
        flip(i) if @input[i + 1] < @input[i]
      end
    end
    @input
  end

  private

  def flip(index)
    @flipping = true
    @input[index], @input[index + 1] = @input[index + 1], @input[index]
  end
end


# test code
if __FILE__ == $PROGRAM_NAME
  bub = BubbleSort.new([2, 3, 1,5,3,6,-4,2,8,9,14])
  puts bub.sort.inspect
end
