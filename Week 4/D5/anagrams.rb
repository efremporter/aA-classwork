def first_anagram(str1, str2)
  anas = []
  hash = Hash.new(0)
  str1.each_char { |c| hash[c] += 1 }
  str2.each_char { |c| hash[c] -= 1 }
  hash.each { |k, v| return false if v != 0 }
  true
end
  
def first_anagram?(str1, str2)
  
end



p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true
