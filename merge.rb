# implementation of merge sort on an array
class MergeSort
  def initialize(input_array)
    @input = input_array
  end

  def sort
    merge_sort(@input)
  end

  private

  def merge_sort(array)
    return array if array.length == 1
    middle = (array.length / 2).floor - 1
    left = merge_sort(array[0..middle])
    right = merge_sort(array[(middle + 1)..-1])
    merge(left, right)
  end

  def merge(array_left, array_right)
    merged = []
    until array_left.empty? || array_right.empty?
      array_left[0] < array_right[0] ? merged << array_left.shift : merged << array_right.shift
    end
    merged += array_right if array_left.empty?
    merged += array_left if array_right.empty?
    merged
  end
end

# test code
if __FILE__ == $PROGRAM_NAME
  merge = MergeSort.new([2, 3, 1, 5, 7, -5, 4, 14, 1, 0, 17])
  puts merge.sort.inspect
end
