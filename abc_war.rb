require 'pry'

def alphabetWar(battle)
  right = 0
  left = 0
  attack = battle.split("")

  attack.each do |letter|
    if letter == 'm'
      right += 4
    elsif letter == 'q'
      right += 3
    elsif letter == 'd'
      right += 2
    elsif letter == 'z'
      right += 1
    elsif letter == 'w'
      left += 4
    elsif letter == 'p'
      left += 3
    elsif letter == 'b'
      left += 2
    elsif letter == 's'
      left += 1
    end
  end

  if left > right
     "Left side wins!"
  elsif right > left
     "Right side wins!"
  else
     "Let's fight again!"
  end
end

p alphabetWar("z")
p alphabetWar("zdqmwpbs")
p alphabetWar("zzzzs")
p alphabetWar("wwwwwwz")

#right
# m - 4
# q - 3
# d - 2
# z - 1
#left
# w - 4
# p - 3
# b - 2
# s - 1
