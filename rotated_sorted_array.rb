# Finds target number in a rotated sorted array using Binary Search

class BinarySearch
  def initialize(target)
    @list = [5, 6, 7, 8, 1, 2, 3, 4]
    @target = target

    puts "target number is at index #{find_target_number()}"
  end 

  def find_target_number()
    low = 0
    high = @list.length-1

    while low <= high # while more than a number to compare
      middle = (low + high) / 2
      pivot = @list[middle] # ending or starting point depending on the array section we are in

      return middle if pivot == @target

      if pivot >= @list[low] # we are at the first section of the array
        if @target < pivot && @target >= @list[low] # starting binary search in first section
          high  = middle - 1
        else
          low = middle + 1
        end
      else # we are at the second section 
        if @target <= @list[high] && @target > section_division
          low = middle + 1
        else
          high  = middle - 1
        end
      end
    end

    return -1 # target number not found
  end 
end

subject = BinarySearch.new(3)