require 'pry'

# https://www.codewars.com/kata/54b42f9314d9229fd6000d9c/train/ruby

def duplicate_encode(word)
  array = word.downcase.split('')
  solution = []
  array.each do |letter|
    if array.count(letter) > 1
      solution << ")"
    else
      solution << "("
    end
  end
  solution.join
end

p duplicate_encode("din")
# "((("
p duplicate_encode("recede")
# "()()()"
p duplicate_encode("Success")
# ")())())"   should ignore case
p duplicate_encode("(( @")
# "))(("
