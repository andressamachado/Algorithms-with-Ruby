class Array
  def quicksort
    return [] if empty?
     
    left, right = partition{|v| v < last}
    pivot = right.pop 

    return *left.quicksort, pivot, *right.quicksort
  end
end

subject = Array.new(10) { rand(100) }

p subject.quicksort
