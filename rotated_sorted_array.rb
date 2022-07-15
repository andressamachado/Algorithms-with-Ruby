require 'byebug'
class BinarySearch
    def initialize(target)
      @list = [5, 6, 7, 8, 1, 2, 3, 4]
      @target = target
      pivot = find_inflection_point()
      puts "target number is at index #{find_target_number(pivot)}"
    end 
  
    def find_inflection_point
      low = 0 
      high = @list.length - 1 # 7 because we start from 0
      
      while low <= high # while we have more than one number to compare
        pivot = 0
        middle = (low + high)/2
        guess = @list[middle]

        if guess < @list[middle + 1] then low = middle + 1 end # if guess smaller than the next element, we are still in the left side of the rotated array

        return pivot = middle + 1 if guess > @list[middle + 1] # when guess is bigger than the next element, we have found the pivot
      end

      return -1
    end

    def find_target_number(pivot)
      low = 0
      high = @list.length - 1

      if @target < @list[low] # target is at the second section of the array
        low = pivot
      elsif @target > @list[low] # target is at the first section of the array
        high = pivot - 1 
      end 

      #byebug

      while low <= high 
        middle = (low + high)/2
        guess = @list[middle]
            
        if guess > @target then high = middle - 1 end
        if guess < @target then low = middle + 1 end
    
        return middle if guess == @target
      end 

      return -1
    end
  end 
  
  subject = BinarySearch.new(3)