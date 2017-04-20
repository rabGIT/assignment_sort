# implementation of quick sort on an array
class QuickSort
  def initialize(input_array)
    @input = input_array
  end

  def sort
    quick_sort(@input)
  end

  private

  def quick_sort(array)
    return array if array.length <= 1
    pivot = array.delete_at(rand(array.size))
    left = []
    right = []
    array.each do |e|
      e < pivot ? left << e : right << e
    end
    left << pivot
    quick_sort(left) + quick_sort(right)
  end
end

# test code
if __FILE__ == $PROGRAM_NAME
  quick = QuickSort.new([2, 4, 3, 1, 5, -7, 0, 15, 4, 8, 12])
  puts quick.sort.inspect
end
