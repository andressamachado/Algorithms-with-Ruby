class BinarySearch
  def initialize(item)
    @list = Array.new(11) {|i| i} 
    @high = @list.length - 1 #highest number to check represented by the index
    @low = 0 #lowest number to check represented by the index
    @item = item
    @moves = 0

    binary_search
    puts "it took #{@moves} iterations to find the number"
  end 

  def binary_search
    while @low <= @high #while we have more than one number to check
      middle = (@low + @high)/2
      guess = @list[middle]
      @moves += 1
      
      if guess > @item then @high = middle - 1 end
      if guess <  @item then @low = middle + 1 end

      return middle if guess == @item
    end 
  end
end 

subject = BinarySearch.new(6)