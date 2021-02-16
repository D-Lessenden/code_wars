require 'pry'
# https://www.codewars.com/kata/5848565e273af816fb000449/train/ruby
#
# def encrypt_this(text)
#   solution = []
#   if text.include?(' ')
#     array = text.split(' ')
#     words = array.map do |word|
#       word.split('')
#     end
#
#     words.each do |word|
#       word.each_with_index do |letter, index|
#         if index == 0
#           word.delete_at(index)
#           word.insert(index, letter.ord).to_s
#         elsif index == 1
#           temp = letter
#           temp2 = word.last
#           word.delete_at(index)
#           word.insert(index, temp2)
#           word.pop
#           word << temp
#           solution << word.join('')
#         end
#       end
#     end
#     solution.join(' ')
#   else
#   words = text.split('')
#
#
#   # words = text.split('')
#   words.each_with_index do |letter, index|
#     if index == 0
#       words.delete_at(index)
#       words.insert(index, letter.ord).to_s
#     elsif index == 1
#       temp = letter
#       temp2 = words.last
#       words.delete_at(index)
#       words.insert(index, temp2)
#       words.pop
#       words << temp
#     end
#   end
#   words.join('')
#   end
# end

def encrypt_this(text)
  text.split.map { |word|
    word[1], word[-1] = word[-1], word[1] if word.size > 2
    word[0] = word[0].ord.to_s
    word
  } .join(' ')
end

p encrypt_this("Hello")
# "72olle"
p encrypt_this("good")
# "103doo"
p encrypt_this("hello world")
# "104olle 119drlo"


# single = []
# if words.size > 1
#   "more than 1 word"
# else
#   binding.pry
#   single = words.split('')
# end
