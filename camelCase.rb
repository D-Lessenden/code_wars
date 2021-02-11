require 'pry'

def solution(string)
  array = string.split /(?=[A-Z])/
  a = array.join(", ")
  b = a.delete(",")
end

p solution('camelCasing')
p solution('camelCasingTest')
