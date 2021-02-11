require 'pry'

# def sum_pairs(ints, s)
#  a = ""
#   ints.each do |int|
#     ints.each do |int2|
#       # binding.pry
#       if int + int2 == s
#          a = "#{int} and #{int2} equals #{s}!"
#        end
#     end
#   end
#   a
# end

def sum_pairs(ints, s)
 a = ""
  ints.each do |int|
    ints.each do |int2|
      # binding.pry
      if int + int2 == s
        a = "Basic: #{ints} should return [#{int2}, #{int}] for sum = #{s}"
       end
    end
  end
  a
end

# l1= [1, 4, 8, 7, 3, 15]
# Test.expect(sum_pairs(l1, 8) == [1, 7], "Basic: ["+l1.join(", ")+"] should return [1, 7] for sum = 8")
# https://www.codewars.com/kata/54d81488b981293527000c8f/train/ruby
p sum_pairs([1, 4, 8, 7, 3, 15], 8)
