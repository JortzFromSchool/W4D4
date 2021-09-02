class Array
  def my_uniq
    hash = Hash.new { |h, k| h[k] = true }

    self.each do |ele|
      hash[ele] = true
    end
    hash.keys
  end



end