require 'pry'

def count_sheep(num)
  string = ""
  count = 1
  num.times do
    string.concat("#{count} sheep . . .")
    count +=1
  end
  string
end



p count_sheep(3)
