require 'pry'
# https://www.codewars.com/kata/54da5a58ea159efa38000836/train/ruby
# level 6

def find_it(seq)
  count = Hash.new 0
  seq.each do |ele|
    count[ele] += 1
  end
  count.each do |k, v|
    if count[k] % 2 != 0
      return k
    end
  end
end

#
p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
# 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5])
# -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])
# 5
p find_it([10])
# 10
p find_it([1,1,1,1,1,1,10,1,1,1,1])
# 10
