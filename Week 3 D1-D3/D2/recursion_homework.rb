def sum_to(num)
  return nil if num < 0
  return 0 if num == 0
  num += sum_to(num - 1)
end

def add_numbers(arr)
  return nil if arr.length == 0
  return arr.first if arr.length == 1
  arr[0] += add_numbers(arr[1..-1])
end

def ice_cream_shop(arr, fav)
  return false if arr.length == 0
  if arr.shift == fav

    return true
  else
    ice_cream_shop(arr, fav)
  end
end

def reverse(str)
  return str if str.length == 0
  str[-1] + reverse(str[0...-1])
end