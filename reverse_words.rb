require 'pry'
# https://www.codewars.com/kata/5259b20d6021e9e14c0010d4/train/ruby

def reverse_words(str)
  solution = []
  a = str.split('').reverse
  array = str.split(' ').reverse
  if a.include?(' ')
    binding.pry
    array.reverse.each do |thing|
      solution << thing.reverse
    end
    solution.join(' ')
  else
    array.reverse.each do |thing|
      solution << thing.reverse
    end
    solution.join('')
  end
end
  # array = str.split('').reverse
  # solution = []
  # array.reverse.each do |thing|
  #   solution << thing.reverse
  # end
  # solution.join(' ')


p reverse_words('The quick brown fox jumps over the lazy dog.')
# 'ehT kciuq nworb xof spmuj revo eht yzal .god'
p reverse_words('apple')
#elppa
p reverse_words('a b c d')
#'a b c d'
p reverse_words('double  spaced  words')
# 'elbuod  decaps  sdrow'
