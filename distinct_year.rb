def distinct_digit_year(year)
  year += 1
  year += 1 until year.digits.uniq  == year.digits
  year
end

p distinct_digit_year(1987)
#2013
p distinct_digit_year(2013)
# #2014
p distinct_digit_year(2229)
# #2301
