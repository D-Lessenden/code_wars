require 'pry'

#https://stackoverflow.com/questions/14077180/ruby-how-to-add-zeros-to-front-of-a-number-string-using-sprintf
#https://www.codewars.com/kata/54a91a4883a7de5d7800009c/train/ruby
def increment_string(input)
  separate = input.scan(/\d+|\D+/)
  suffix = ""
  if separate.size == 2
    suffix = separate.last.succ
    separate.pop
    separate << suffix
    separate.join('')
  elsif separate[0].ord >= 48 && separate[0].ord <= 57
    separate[0].succ
  else
    separate << "1"
    separate.join('')
  end
end

p increment_string('foo')
# foo1
# p increment_string('foobar1')
# #foobar2
# p increment_string('foobar001')
# #foobar002
# p increment_string('foobar00')
# #foobar01
# p increment_string('foobar99')
# #foobar100
# p increment_string('')
# #1
p increment_string('1')
p increment_string('009')


# def increment_string(input)
#   array = input.split('')
#   ords = []
#   solution = []
#   binding.pry
#
#
#   array.each do |ele|
#     if ele.ord >= 48 && ele.ord <= 57
#       ords << ele.ord
#     else
#       ords << ele
#     end
#   end
#
#   if ords == array
#     input + "1"
#   else
#     ords = ords.reverse
#     # ords << (ords.pop + 1)
#     binding.pry
#
#     ords.each_with_index do |ele, ind|
#       if ind == 0 && ele == 57
#         ords.unshift(49)
#       else
#         ords = ords.reverse
#
#         # binding.pry
#       end
#       ords = ords.reverse
#     end
#
#     # ords.reverse do |ele|
#     #   p ele[1]
#     # end
#     # solution
#
#
#
#     solution = ords.map do |ele|
#       if ele.class == Integer
#         ele.chr
#       else
#         ele
#       end
#     end
#     solution.join('')
#   end
# end

# ords[0].chr
# (ords[0] + 1).chr

# def increment_string(input)
#   result = ""
#   separate = input.scan(/\d+|\D+/)
#   num = input[/\d+/].to_i
#   input.split(/(?<=\d)(?=[A-Za-z])/)
#
#   # num = separate.last.to_i
#   binding.pry
#   if separate.count > 1
#     if num == 0 && separate.last.length > 1
#       binding.pry
#       result = input.delete(input[-1]) + "#{num+1}"
#       # result = input.delete(input[-1]) + "#{num+1}"
#     elsif num == 0
#       # binding.pry
#       result = input + "#{num+1}"
#     elsif num > 0
#       result = input.delete(input[-1]) + "#{num+1}"
#     end
#   else
#     # binding.pry
#     result = input + "#{num+1}"
#   end
#   result
# end




# def increment_string(input)
#   array = input.split('')
#   ords = []
#   solution = []
#   array.each do |ele|
#     if ele.ord >= 48 && ele.ord <= 57
#       ords << ele.ord
#     else
#       ords << ele
#     end
#   end
#
#   if ords == array
#     input + "1"
#   else
#     binding.pry
#     ords << (ords.pop + 1)
#     # if ords.reverse
#
#
#
#     solution = ords.map do |ele|
#       if ele.class == Integer
#         ele.chr
#       else
#         ele
#       end
#     end
#     solution.join('')
#   end
# end
