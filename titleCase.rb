require 'pry'
# https://www.codewars.com/kata/5202ef17a402dd033c000009/train/ruby
# level 6
def title_case(title, minor_words = '')
  title_array = title.upcase.split(' ')
  minor_array = minor_words.upcase.split(' ')

  title_array.each_with_index do |word, ind|
    if ind == 0
      word.capitalize!
    elsif minor_array.include?(word)
      minor_array.each {|minor| word.downcase! if word == minor}
    else
      word.capitalize!
    end
  end
  title_array.join(' ')
end

# p title_case(''), '')
p title_case('a clash of KINGS', 'a an the of')
 # 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In')
# 'The Wind in the Willows')
p title_case('the quick brown fox')
# 'The Quick Brown Fox')
p title_case('First a of in', 'an often into')
# "First A Of In"
# an often into
