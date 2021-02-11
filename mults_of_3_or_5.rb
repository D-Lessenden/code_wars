require 'pry'

def solution(number)
array = *(1..number)
result = []
  array.each do |num|
    if num % 3 == 0 || num % 5 == 0 && num != number
      result << num
    end
  end
result.sum
end

p solution(10)
#23
p solution(20)
# #78
p solution(200)
#9168
