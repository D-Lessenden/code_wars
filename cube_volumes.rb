require 'pry'
# https://www.codewars.com/kata/58cb43f4256836ed95000f97/train/ruby
# level 8
def find_difference(a, b)
  (a.inject(:*) - b.inject(:*)).abs
end
p find_difference([3, 2, 5], [1, 4, 4])
# 14
p find_difference([9, 7, 2], [5, 2, 2])
# 106
