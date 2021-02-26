require 'pry'
# https://www.codewars.com/kata/5375f921003bf62192000746/train/ruby
# level 6

def abbreviate(string)
   string.gsub!(/\w{4,}/) do |match|
      "#{match[0]}#{match.size-2}#{match[-1]}"
   end
 end
  # array = string.split('')
  # num = (string.size - 2).to_s
  # solution = ""
  # solution += string[0]
  # solution += num
  # solution += string[-1]
  # # binding.pry
  # solution


p abbreviate('banana')
# 'b4a'
p abbreviate("double-barrel")
# "d4e-b4l"
p abbreviate("You, and I, should speak.")
# "You, and I, s4d s3k."
