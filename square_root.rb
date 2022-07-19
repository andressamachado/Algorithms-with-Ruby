# Calculates sqrt of a number using Binary Search

class SquareRoot
  def initialize(num)
    @number = num
    puts sqrt
  end

  def sqrt
    low = 1
    high = @number
    answer = 0

    while low <= high
      middle = (low + high)/2

      if middle <= @number/middle 
        answer = middle
        low = middle + 1
      elsif 
        high = middle - 1
      end 
    end

    answer
  end
end

subject = SquareRoot.new(8)