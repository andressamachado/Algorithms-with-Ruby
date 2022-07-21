class BinarySearchV3
  def initialize(item)
    @list = Array.new(11) {|i| i} 
    @high = @list.length - 1 #highest number to check represented by the index
    @low = 0 #lowest number to check represented by the index
    @item = item
    @moves = 0

    binary_search_v3
    puts "it took #{@moves} iterations to find the number"
  end

  def binary_search_v3 
    while @low + 1 < @high
      middle = @low + (@high - @low) / 2;
      guess = @list[middle]
      @moves += 1

      return middle if guess == @item

      if guess > @item then @high = middle end 
      if guess < @item then @low = middle end 
    end

    if(nums[@low] == @item) then return @low end
    if(nums[@high] == @item) then return @high end
    
    return -1;
  end
end

subject = BinarySearchV3.new(6)