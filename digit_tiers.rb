require 'pry'


def create_array_of_tiers(num)
  str = num.to_s.split('')
  solution = []
  str.each_with_index do |ele, ind|
    solution << str[0..ind].join('')
  end
  solution
end

p create_array_of_tiers(420)
#["4", "42", "420"]

p create_array_of_tiers(2017)
#["2", "20", "201", "2017"]
