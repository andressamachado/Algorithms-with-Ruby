class Quicksort
  def quicksort(numbers)
    return nil if numbers.length.nil?
    return numbers if numbers.length < 2 # array has only one element

    middle_index = (numbers.length - 1) / 2
    pivot = numbers[middle_index] # assign pivot with the middle element value
    smaller_nums = []
    greater_nums = []

    numbers.each do |number|
      smaller_nums.push(number) if number < pivot
      greater_nums.push(number) if number > pivot
    end

    quicksort(smaller_nums) + [pivot] + quicksort(greater_nums)
  end
end

print Quicksort.new.quicksort([33, 10, 15, 7])