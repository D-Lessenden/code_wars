require 'pry'

def hero(bullets, dragons)
  # binding.pry
  bullets >= dragons * 2
end


p hero(10, 5)
p hero(7, 4)
p hero(4, 5)
p hero(100, 40)
p hero(1500, 751)
p hero(0, 1)
