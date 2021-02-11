require 'pry'

def delete_digit(n)
  str = n.to_s.chars
  binding.pry 
  str.combination(str.length - 1).uniq.sort.reverse[0].join.to_i
end

# def delete_digit(n)
#   num = n.to_s.split('')
#   # low = num.sort.first
#   # num.delete_at(num.index(low))
#   # num.join().to_i
#   # n.delete(1)
#   # num.delete_first(low).to_i
#   # binding.pry
#
#
#   num.join()
# end

p delete_digit(334185)
#34185
p delete_digit(152)
#52
p delete_digit(1001)
# # #101
p delete_digit(10)
# # #1
