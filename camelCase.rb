require 'pry'

def solution(string)
  array = string.split /(?=[A-Z])/
  array.join("")
end

p solution('camelCasing')
p solution('camelCasingTest')
