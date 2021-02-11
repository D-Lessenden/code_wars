require 'pry'

def life_path_number(birthdate)
  array = birthdate.split('-')
  year = array[0].split('').map(&:to_i).sum
  month = array[1].split('').map(&:to_i).sum
  day = array[2].split('').map(&:to_i).sum
  result = 0

  result += recursive(year)
  result += recursive(month)
  result += recursive(day)
  recursive(result)
end

def recursive(input)
  final = 0
  if input.digits.count > 1
    recursive(input.digits.sum)
  else
    final += input
    return final
  end
end


p life_path_number("1955-10-28")
#4
p life_path_number("1971-06-28")
#7

#yyyy-mm-dd
# year  :  1 + 8 + 7 + 9 = 25  -->  2 + 5 = 7
# month :  0 + 3 = 3
# day   :  1 + 4 = 5
# result:  7 + 3 + 5 = 15  -->  1 + 5 = 6

# def life_path_number(birthdate)
#   array = birthdate.split('-')
#   year = array[0].split('').map(&:to_i)
#   month = array[1].split('').map(&:to_i)
#   day = array[2].split('').map(&:to_i)
#   result = []
#   final = 0
#
#   result << month.sum
#   if day.sum.digits.count > 1
#     result << day.sum.digits.sum
#   end
#
#   if year.sum.digits.count > 1
#     year.sum.digits.sum
#     result << year.sum.digits.sum
#   end
#
#   if result.sum.digits.count > 1
#     final += result.sum.digits.sum
#     final
#   else
#     result.sum
#   end
# end

#   result = []
#   input.each do |ele|
#     if ele.sum.digits.count > 1
#       binding.pry
#       ele.sum.digits.sum
#       # temp = ele.sum.to_s.split('')
#       recursive(temp)
#     else
#       result << ele.sum
#     end
#   end
#   result
# end
