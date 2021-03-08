require 'pry'
# https://www.codewars.com/kata/604287495a72ae00131685c7/train/ruby
# level 7

def doubleton(num)
  new = num+1
  if new.digits.uniq.size == 2
    return new
  else
    doubleton(new)
  end
end



p doubleton(130)
# 131
p doubleton(1434)
# 1441
p doubleton(20)
# 21
p doubleton(5)
# 10
p doubleton(131)
# 133
