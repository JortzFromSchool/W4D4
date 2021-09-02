class Stock
  def initialize(array)
    @array = array
  end

  def stock_picker
    difference = nil
    coordinates = []

    @array.each_with_index do |ele, i|
      j = i + 1
      while j < @array.length
        if difference == nil
          difference = @array[j] - @array[i]
          coordinates = [i, j]
        elsif @array[j] - @array[i] > difference
          difference = @array[j] - @array[i]
          coordinates = [i, j]
        end
        j += 1
      end
    end
    coordinates
  end

end