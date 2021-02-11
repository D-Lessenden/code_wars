require 'pry'

def sea_sick(sea)
  array = sea.split('')
  solution = 0
  up = array.count('~').to_f
  down = array.count('_').to_f
  a = [up, down].sort
  count = 0.0
  array.each_with_index do |ele, ind|
    num = ind + 1
    if ele != array[num]
      count += 1
      end
    end
  solution = count / array.length
  binding.pry
  if solution < 0.20 && a[0] / a[1] < 0.2
    "No Problem"
  else
    "Throw Up"
  end
end

p sea_sick("____")
# "No Problem"
# p sea_sick("_~~~~~~~_~__~______~~__~~_~~")
# # "Throw Up"
#
# p sea_sick("~~~~~~~~~~~_~~~~~~")
# # no problem
# p sea_sick("______~___~_")
# #throw
#
# p sea_sick("_~~~~~~~~~~_~_~~~~~")
# #throw
# p sea_sick("~~__~~~~__~~~~~~~~~~")
# #np
# # p sea_sick('012345')
