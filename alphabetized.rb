require 'pry'

def alphabetized(s)
  # a = s.gsub!(/\W+/, '')
  a = s.gsub(/[^a-zA-Z]/, '')
  if a == nil
    return ""
  else
    array = a.split('')
    array.sort_by(&:downcase).join('')
  end
end

p alphabetized("")
p alphabetized("A b B a ")
p alphabetized(" a ")
