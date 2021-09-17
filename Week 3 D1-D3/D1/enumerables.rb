class Array
  def my_each(&prc)
    i = 0
    while i < self.length
      prc.call(self[i])
      i += 1
    end
    self
  end

  def my_select(&prc)
    arr = []
    self.my_each { |el| arr << el if prc.call(el) }
    arr
  end

  def my_reject(&prc)
    self.my_select { |ele| !prc.call(ele) }
  end

  def my_any?(&prc)
    counter = 0
    self.my_each { |ele| counter += 1 if prc.call(ele) }
    counter > 0
  end

  def my_all?(&prc)
    counter = 0
    self.my_each { |ele| counter += 1 if prc.call(ele) }
    counter == self.length
  end

  def my_flatten
    return self if self.none? { |ele| ele.is_a?(Array) }
    new_array = []
    self.my_each do |ele|
      if ele.is_a?(Array)
        new_array += ele.my_flatten
      else
        new_array << ele
      end
    end
    new_array
  end

  def my_zip(*arrs)
    new_arr = Array.new(self.length) { Array.new() }
    
    self.each_with_index { |ele, i| new_arr[i] << ele }
    arrs.each do |sub_arr|
      sub_arr.each_with_index { |ele, k| new_arr[k] << ele if k < new_arr.length }
    end
    new_arr.each do |sub_arr|
      while sub_arr.length < arrs.length + 1
        sub_arr << nil
      end
    end

    new_arr
  end

  def my_rotate(num=1)
    old_arr = self.dup

    if num > 0
      num.times { old_arr.push(old_arr.shift) }
    else
      num *= -1
      num.times { old_arr.unshift(old_arr.pop) }
    end
    old_arr
  end

  def my_join(separator="")
    str = ""
    self.each_with_index do |ele, i|
      if i != self.length - 1
        str += ele + separator
      else
        str += ele
      end
    end
    str
  end

  def my_reverse
    new_arr = []
    i = self.length - 1
    while i >= 0
      new_arr << self[i]
      i -= 1
    end
    new_arr
  end
end

