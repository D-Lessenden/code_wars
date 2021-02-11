require 'pry'


def nb_year(p0, percent, aug, p)
  population = p0
  count = 0
  until population > p do
    population += ((population * (percent/100.0)) + aug)
    count += 1
  end
  count
end
# https://www.codewars.com/kata/563b662a59afc2b5120000c6/train/ruby

p nb_year(1500, 5, 100, 5000)
#15
p nb_year(1500000, 2.5, 10000, 2000000)
#10
p nb_year(1500000, 0.25, 1000, 2000000)
#94
