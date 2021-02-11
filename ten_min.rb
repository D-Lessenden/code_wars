require 'pry'

def is_valid_walk(walk)
  origin = [0,0]
  walk.each do |x|
    if x == 'n'
      origin[1] += 1
    elsif x == 'e'
      origin[0] += 1
    elsif x == 's'
      origin[1] -= 1
    elsif x == 'w'
      origin[0] -= 1
    end
  end

  if walk.count == 10 && origin == [0,0]
    return true
  else
    return false
  end
end




# p is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])
# p is_valid_walk(['n','s','n','s','n','s','n','s','n'])
