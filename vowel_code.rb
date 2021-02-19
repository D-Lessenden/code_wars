require 'pry'
# https://www.codewars.com/kata/53697be005f803751e0015aa/train/ruby
#level 6

def encode(s)
  encode = {
    "a" => "1",
    "e" => "2",
    "i" => "3",
    "o" => "4",
    "u" => "5"
  }

  array = s.split('')
  array.each_with_index do |letter, ind|
    if encode[letter] != nil
      array[ind].replace(encode[letter])
    end
  end
  array.join('')
end

def decode(s)
  decode = {
    "1" => "a",
    "2" => "e",
    "3" => "i",
    "4" => "o",
    "5" => "u"
  }

  array = s.split('')
  array.each_with_index do |letter, ind|
    if decode[letter] != nil
      array[ind].replace(decode[letter])
    end
  end
  array.join('')
end

p encode('hello')
# h2ll4
p decode('h2ll4')
# hello
