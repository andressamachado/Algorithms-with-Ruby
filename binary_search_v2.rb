class BinarySearchV2
  def initialize(item)
    @list = Array.new(11) {|i| i} 
    @high = @list.length #highest number to check represented by the index
    @low = 0 #lowest number to check represented by the index
    @item = item
    @moves = 0

    binary_search_v2
    puts "it took #{@moves} iterations to find the number"
  end 

  def binary_search_v2
    while @low < @high #while we have more than one number to check
      middle = @low + (@high - @low)/2
      guess = @list[middle]
      @moves += 1

      return middle if guess == @item

      if guess > @item then @high = middle - 1 end
      if guess <  @item then @low = middle + 1 end
    end 

    if @low != @list.length && @list[@low] == @item then return @low end

    return -1;
  end
end 

subject = BinarySearchV2.new(6)