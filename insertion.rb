# implementation of insertion sort on an array
class InsertionSort
  def initialize(input_array)
    @input = input_array
  end

  def sort
    (@input.length - 1).times do |i|
      insert(@input, i, @input[i + 1])
    end

    @input
  end

  private

  def insert(array, right_index, value)
    # value is the value of array[right_index + 1]
    # right_index is the furthest right sorted element

    # Step through sorted elements right to left.
    # As long as your value is less than the element
    # at array[i] and you still have elements
    i = right_index
    while (i >= 0 && array[i] > value)
      # copy the element
      array[i + 1] = array[i]
      i -= 1
    end

    # insert the actual element
    array[i + 1] = value
  end
end


# test code
if __FILE__ == $PROGRAM_NAME
  ins = InsertionSort.new([2, 3, 1,7,4,5,2,9,0,-5,3])
  puts ins.sort.inspect
end
