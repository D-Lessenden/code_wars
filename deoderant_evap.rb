require 'pry'

# https://www.codewars.com/kata/5506b230a11c0aeab3000c1f/train/ruby

def evaporator(content, evap_per_day, threshold)
  result = 0
  percentage = 100.0

  until (percentage < threshold)
    percentage = percentage - (percentage * (evap_per_day / 100.0))
    result += 1
  end
  result
end

p evaporator(10, 10, 10)
#22
p evaporator(10, 10, 5)
#29
