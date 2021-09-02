class Array
  def my_uniq
    hash = Hash.new { |h, k| h[k] = true }

    self.each do |ele|
      hash[ele] = true
    end
    hash.keys
  end

  def two_sum
    result = []
    self.each_with_index do |ele1, i1|
      self.each_with_index do |ele2, i2|
        result << [i1, i2] if (i2 > i1) && (ele1 + ele2 == 0)
      end
    end
    return result
  end

  def my_transpose
    result = Array.new(self.length) { Array.new(self.length) }

    self.each_with_index do |row, i|
      row.each_with_index do |ele, j|
        result[i][j] = self[j][i]
      end
    end
    result
  end
end