require 'pry'

# def validate_pin(pin)
#  # num = pin.scan(/\D/).join('')
#   if pin.class == Integer
#     pin.length == 4 || pin.length == 6
#   else
#
#     num = pin.delete("^0-9")
#     if num.length == 4 || num.length == 6
#       return true
#     else
#       return false
#     end
#   end
# end
def validate_pin(pin)
  (pin.length == 4 || pin.length == 6) && pin.count("0-9") == pin.length
end
#
p validate_pin("111a")
# p validate_pin("12")
# p validate_pin("1111")
p validate_pin("111456")
# p validate_pin("12345a")
# p validate_pin("12345%")
# p validate_pin("123.56")
# p validate_pin("-123.56")
# p validate_pin("123\n")
# p validate_pin(1234)



# def validate_pin(pin)
#   #return true or false
#   if pin.to_i
#     pin.length == 4 || pin.length == 6
#   else
#     return false
#   end
# end
