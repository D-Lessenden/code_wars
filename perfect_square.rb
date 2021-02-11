require 'pry'

def find_next_square(sq)
  if (Math.sqrt(sq) % 1).zero?
    num = Math.sqrt(sq) + 1
    (num * num).floor
  else
    -1
  end
end

p find_next_square(121)
p find_next_square(114)
