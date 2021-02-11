require 'pry'

def divisors(n)
  result = []
  array = *(2..n)

  array.each do |num|
    if n % num == 0 && num != n
      result << num
    end
  end
  if result.empty?
    "#{n} is prime"
  else
    result
  end 
end

p divisors(13)


# p divisors(15)
# #[3,5]
# p divisors(253)
# #[11,23]
# p divisors(24)
# #[2,3,4,6,8,12]
