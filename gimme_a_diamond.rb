require 'pry'
# https://www.codewars.com/kata/5503013e34137eeeaa001648/ruby

def diamond(n)
  if n % 2 == 0 || n < 0
    return nil
  end

  diamond = "*" * n + "\n"

  i = n - 2
  while i >= 1
    stars = "*" * i
    spacer = " " * ((n - i) / 2)
    add_on = spacer + stars + "\n"
    diamond = add_on + diamond + add_on
    i -= 2
  end

   return diamond
end

p diamond(1)

p diamond(3)

p diamond(5)

p diamond(0)
# nil
p diamond(-3)
# nil
p diamond(2)
# nil
