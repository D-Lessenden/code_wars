require 'pry'
# https://www.codewars.com/kata/523f5d21c841566fde000009/train/ruby
# level 6

def array_diff(a, b)
  a.each do |num1|
    a.delete(b[0])
  end
end

p array_diff([1,2], [1])
# [2]
p array_diff([1,2,2], [1])
# [2,2]
p array_diff([1,2,2], [2])
# [1]
p array_diff([1,2,2], [])
# [1,2,2]
p array_diff([], [1,2])
# []
