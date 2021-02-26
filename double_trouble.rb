require 'pry'
# https://www.codewars.com/kata/57f7796697d62fc93d0001b8/train/ruby
# level 7

def trouble(arr, t)
  arr.each_with_index do |num, ind|
    if arr[ind+1] !=nil && num + arr[ind+1] == t
      arr.delete_at(ind+1)
      trouble(arr, t)
    else
      arr
    end
  end
end


p trouble([1, 2, 3, 4, 5],3)
# [1, 3, 4, 5]
#
p trouble([1, 3, 5, 6, 7, 4, 3],7)
# [1, 3, 5, 6, 7, 4]
p trouble([4, 1, 1, 1, 4],2)
# [4, 1, 4]
p trouble([2, 2, 2, 2, 2, 2], 4)
# [2]
p trouble([2, 6, 2], 8)
# [2, 2]
