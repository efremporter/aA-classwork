
def remove_dups(arr) 
    arr.uniq
end

class Array
  def two_sum
    zero_sum = []
    (0...self.length - 1).each do |i|
      (i + 1...self.length).each do |j|
        zero_sum << [i, j] if self[i] + self[j] == 0
      end
    end
    return zero_sum
  end
end


def my_transpose(two_d_array)
  arr = []
  (0...two_d_array.length).each do |i|
    holder = []
    (0...two_d_array.length).each do |j|
      holder << two_d_array[j][i]
    end
    arr << holder
  end
  arr
end

