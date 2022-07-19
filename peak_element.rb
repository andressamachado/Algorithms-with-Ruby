# Input: nums = [1,2,1,3,5,6,4]
# Output: should return index number 1 where the peak element is 2, or index number 5 where the peak element is 6.

class PeakElement
  def initialize(nums)
    if nums == nil || nums.length == 0 then return -1 end
    @nums = nums

    puts find_peak_element
  end 

  def find_peak_element
    high = @nums.length - 1
    low = 0

    while low < high
      middle = low + (high - low) / 2
      guess = @nums[middle]

      if guess >= @nums[middle + 1] then high = middle end 
      if guess < @nums[middle + 1] then low = middle + 1 end
    end

    return "A peak element is located at index #{low}"
  end
end

subject = PeakElement.new([1,2,1,1,1,1,1])