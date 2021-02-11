require 'pry'

def points(games)
  x_total = 0
  games.each do |result|
  score = result.split(':')
    if score[0] > score[1]
      x_total += 3
    elsif score[0] == score[1]
      x_total += 1
    else
      x_total += 0
    end
  end
  x_total
end

# Test.assert_equals(points(['1:0','2:0','3:0','4:0','2:1','3:1','4:1','3:2','4:2','4:3']),30)
p points(['1:0','2:0','3:0','4:0','2:1','3:1','4:1','3:2','4:2','4:3'])
