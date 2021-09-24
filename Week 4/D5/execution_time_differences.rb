def my_min_slow(list)
  list.each do |ele1|;e
    result = list.all? { |ele2| ele1 <= ele2 }
    return ele1 if result
  end
end

def my_min_fast(list)
  min = list[0]
  list.each { |ele| min = ele if min > ele }
  min
end

def largest_contiguous_subsum_slow(list)
  subArrs = []
  list.each.with_index do |ele1, idx1|
    list.each.with_index do |ele2, idx2|
      if idx2 >= idx1
        subArrs << list[idx1..idx2]
      end
    end
  end
  max = subArrs.shift.sum
  subArrs.each do |subArr|
    max = subArr.sum if subArr.sum > max
  end
  max
end

def largest_contiguous_subsum_fast(list)
  largest = list[0]
  sum = list.shift
  sum = 0 if sum < 0
  list.each do |ele|
    sum += ele
    if sum > largest
      largest = sum
    end
    sum = 0 if sum < 0
  end
  largest
end
