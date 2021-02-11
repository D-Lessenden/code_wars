require 'pry'

def calc(s)
  array = s.split('')
  holder_array = []

  ascii1 = array.map do |element|
    element.ord
  end

  strings = ascii1.map(&:to_s)

  holder_array = strings.map do |num|
     num.split('')
  end.flatten

  nums = holder_array.map(&:to_i)

  ascii2 = nums.map{|i| i == 7 ? 1 : i}
  solution = (nums.sum) - (ascii2.sum)
end

p calc('ABC')
#6
p calc('abcdef')
#6
p calc('ifkhchlhfd')
#6
p calc('aaaaaddddr')
#30
p calc('jfmgklf8hglbe')
#6
p calc('jaam')
#12
p calc('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')
#96
