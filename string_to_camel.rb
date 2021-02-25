require 'pry'
# https://www.codewars.com/kata/517abf86da9663f1d2000003/train/ruby
# level 6
def to_camel_case(str)
  # a = str.gsub(/[_,-](.)/) {"#{$1.upcase}"}
  # b = "this_is_a_string".gsub(/[_,-](.)/) {$1.upcase}

array = str.split(/[_,-]/)
array.each_with_index do |word, ind|
  if ind > 0
    word.capitalize!
  end
end
array.join
end

p to_camel_case("the_stealth_warrior")
# #theStealthWarrior
p to_camel_case("The-Stealth-Warrior")
#TheStealthWarrior
