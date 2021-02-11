require 'pry'

def string_expansion(s)
  array = s.split('')
  ints = s.scan(/\d+/).map(&:to_i)

  array.each do |ele|
    if ints.include?(ele.to_i)
      binding.pry
      # array.delete(ele)
      array.index("ele") = ele.to_i
      "hello"
    end
  end
  # a = array.map(&:to_i)
  # array.each do |ele|

    # if ele.to_i > 0
    #   # array.replace(ele.to_i)
    #   a = array.map { |x| x == ele ? ele.to_i : x }
    # end
  #   binding.pry
  # end
  # a
end

p string_expansion("3ab1c")

p string_expansion("3D2a5d2f")

p string_expansion("0d0a0v0t0y")

p string_expansion("3d332f2a")

p string_expansion("abcde")
