# Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.
class SearchRange 

  def search_range(nums, target)
    result = Array.new(2)
    result[0] = find_start_index(nums, target)
    result[1] = find_last_index(nums, target)

    p result
  end

  def find_start_index(nums, target)
    index = -1
    low = 0
    high = nums.length - 1
    middle = 0

    while low <= high
      middle = low + (high - low) / 2

      if nums[middle] >= target then high = middle - 1 end
      if nums[middle] < target then low = middle + 1 end
      if nums[middle] == target then index = middle end
    end

    index
  end

  def find_last_index(nums, target)
    index = -1
    low = 0
    high = nums.length - 1
    middle = 0

    while low <= high
      middle = low + (high - low) / 2

      if nums[middle] <= target then low = middle + 1 end
      if nums[middle] > target then high = middle - 1 end
      if nums[middle] == target then index = middle end
    end

    index
  end
end

subject = SearchRange.new()
nums = [5, 7, 7, 8, 8, 10]
subject.search_range(nums, 8)