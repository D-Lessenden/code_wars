require 'pry'

def longest_consec(strarr, k)
  new_string = ""
  if !strarr.empty?
    long = strarr.sort_by(&:length).reverse
    binding.pry
    k.times do
      new_string.concat(long[0])
      long.shift
    end
  end
  new_string
end

# p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2)
# #"abigailtheta"
# p longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1)
# # "oocccffuucccjjjkkkjyyyeehh"
#
# p longest_consec([], 3)
# #""

p longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2)
# "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck")
#34
#34



#    testing(longest_consec(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2), "wlwsasphmxxowiaxujylentrklctozmymu")
#    testing(longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2), "")
#    testing(longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3), "ixoyx3452zzzzzzzzzzzz")
#    testing(longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15), "")
#    testing(longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0), "")
# end
