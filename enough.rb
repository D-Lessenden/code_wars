require 'pry'

# def delete_nth(order,max_e)
#   new = []
#   count = Hash.new(0)
#   order.each do |ele|
#     count[ele] += 1
#   end
#
#   count.each do |k,v|
#
#     if v <= max_e
#       v.times do
#         new << k
#       end
#     elsif v >= max_e
#       (max_e).times do
#           new << k
#       end
#     end
#   end
#   new
# end

# def delete_nth(order,max_e)
#   new_array = []
#   order.each do |ele|
#     if !new_array.include?(ele)
#       if order.count(ele) <= max_e
#         ele.times do
#           new_array << ele
#         end
#       elsif order.count(ele) >= max_e
#         (max_e).times do
#           new_array << ele
#         end
#       end
#     end
#   end
#   new_array
# end

def delete_nth(order,max_e)
  new_array = []
  order.each do |element|
    if order.count(element) >= max_e
      binding.pry

    elsif order.count(element) <= max_e
      new_array << element
    end
  end
end

#intead of this mess do order.count('ele')
#https://stackoverflow.com/questions/1765368/how-to-count-duplicates-in-ruby-arrays
#https://www.codewars.com/kata/554ca54ffa7d91b236000023/train/ruby




p delete_nth([20,37,20,21], 1)
# p delete_nth([1,1,3,3,7,2,2,2,2], 3)

# Test.assert_equals(delete_nth([20,37,20,21], 1), [20,37,21], "From array [20,37,20,21],1 you get")
# Test.assert_equals(delete_nth([1,1,3,3,7,2,2,2,2], 3), [1, 1, 3, 3, 7, 2, 2, 2], "From array [1,1,3,3,7,2,2,2,2],3 you get")
