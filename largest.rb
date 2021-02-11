require 'pry'

def max_number(n)
  n.to_s.split('').sort.reverse.join('').to_i
end

p max_number(213)
p max_number(7389)
p max_number(63792)
p max_number(566797)
p max_number(1000000)


# Test.assert_equals(max_number(213), 321)
#   Test.assert_equals(max_number(7389), 9873)
#   Test.assert_equals(max_number(63792), 97632)
#   Test.assert_equals(max_number(566797), 977665)
#   Test.assert_equals(max_number(1000000), 1000000)
