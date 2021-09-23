
def remove_dups(arr)
    arr.uniq
end

class Array

  def two_sum(array)
    zero_sum = []
    (0...array.length - 1).each do |i|
      (i + 1...array.length).each do |j|
        zero_sum << [i, j] if array[i] + array[j] == 0
      end
    end
    return zero_sum
  end
  
end

