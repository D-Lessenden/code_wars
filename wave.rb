require 'pry'

# def wave(str)
#   array = []
#   wave = []
#
#   str.length.times do
#     array << str
#   end
#
#   count = 0
#   array.each_with_index do |letter, index|
#     wave << letter.gsub(letter[index], letter[index].upcase)
#   end
#  wave
# end

# def wave(str)
#   array = []
#   wave = []
#
#   str.length.times do
#     array << str
#   end
#
#   count = 0
#   array.each do |word|
#     # binding.pry
#     # wave << letter.gsub(letter[count], letter[count].upcase)
#     # count += 1
#     a = letter.split("")
#       a.each do |letter|
#         binding.pry
#         # let[count].upcase
#         wave << letter.gsub(letter[count], let[count].upcase)
#         count += 1
#       end
#
#
#
#   end
#  wave
# end

def wave(str)
  words = str.split("")
  result = []
  words.each_with_index do |letter, index|
    if letter != " "
      words[index].replace(letter.upcase)
      result << words.join("")
      words[index].replace(letter.downcase)
    end
  end
  result
end





# p wave("hello")
p wave(" gap ")

# result = ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
