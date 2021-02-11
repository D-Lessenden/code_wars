require 'pry'

# def remove_smallest(numbers)
#   numbers.delete_at(numbers.index(numbers.min)) if !numbers.empty?
#   numbers
# end

# def remove_smallest(array)
#   min = array.min
#   array.reject {|i| i <= min }
# end


def remove_smallest(numbers)
  solution = []
  numbers.each do |num|
    solution << num
  end
  solution.delete_at(solution.index(solution.min)) if !solution.empty?
  solution
end


p remove_smallest([1,2,3,4,5])
# p remove_smallest([5,3,2,1,4])
# p remove_smallest([2,2,1,2,1])
p remove_smallest([])
