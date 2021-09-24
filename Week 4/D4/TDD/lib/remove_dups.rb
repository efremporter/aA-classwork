
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

def stock_picker(arr)
  temp_low = arr[0]
  temp_low_index = 0
  temp_high = 0
  temp_high_index = 0
  arr.each_with_index do |price, i|
    if price > temp_high
      temp_high_index = i
      temp_high = price 
    end
    if price < temp_low && i < temp_high_index
      temp_low = price
      temp_low_index = i
    end
  end
  return [temp_low_index, temp_high_index]
end

#[6, 10, 400, 11, 5, 111]
