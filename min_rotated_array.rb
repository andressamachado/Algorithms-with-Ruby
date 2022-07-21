# Finds the smallest number in a rotated array using Binary Search
# Input: nums = [4,5,6,7,0,1,2]
# Output: 0 

class RotatedArray
  def initialize(nums)
    if nums == nil || nums.length == 0 then return -1 end # array is not valid
    @nums = nums

    puts "The smallest number in the rotated array is #{find_smallest_number}"
  end

  def find_smallest_number
    # Array has only one element
    if @nums.length == 1 then return @nums[0] end
    # array is not rotated
    if @nums[@nums.length-1] > @nums[0] then return @nums[0] end 
     
    low = 0
    high = @nums.length - 1

    while low <= high 
      middle_index = low + (high - low) / 2
      middle_element = @nums[middle_index]
      foward_element = @nums[middle_index + 1]
      previous_element = @nums[middle_index - 1]
      first_element = @nums[0]

      if middle_element > foward_element then return foward_element end 
      if middle_element < previous_element then return middle_element end

      if middle_element > first_element
        low = middle_index + 1
      else
        high = middle_index - 1
      end
    end 
  end
end

subject = RotatedArray.new([4,5,6,7,0,1,2])