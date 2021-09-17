def range(min, max)
 return [] if min >= max

 range(min, max - 1) << max - 1
 
end

# p range(5, 10)

def range_iter(min, max)
  array = []
  (min...max).each do |num|
    array << num
  end
  array
end


def exponent_one(b, n)
  return 1 if n == 0
  b * exponent_one(b, n-1)
end

def deep_dup(arr)
  new_arr = []
  arr.each do |sub_array|
     if sub_array.is_a?(Array) 
      new_arr << deep_dup(sub_array)
      
    else
      new_arr << sub_array
    end
  end
  new_arr
end

[0, 1, 1, 2, 3, 5]
def fib(n) #4
  return [0] if n == 1
  return [0, 1] if n == 2
  fibs = fib(n - 1)
  fibs << fibs[-1] + fibs[-2]
end

def fib_iterate(n)
  arr = [0, 1]
  i = 0
  while arr.length < n
    arr << arr[i] + arr[i + 1]
    i += 1
  end
  arr
end

def bsearch(array, target)
  pivot = array.length / 2
  return pivot if target == array[pivot]
  # new_arr = []
  if array[pivot] > target
    # new_array = (array[0...pivot])
    pivot + bsearch(array[0...pivot], target)
  elsif array[pivot] < target
    pivot + bsearch(array[pivot + 1..-1], target)
  end
end

# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil