require 'pry'
require 'pry-byebug'

def merge_sort(array,sorted_arr = [])
  if array.length >1
    if array[0] > array[1]
      sorted_arr.push(array[1])
      sorted_arr.push(array[0])
      array.slice!(0,2)
      merge_sort(array,sorted_arr)
    elsif array[0] < array[1]
      sorted_arr.push(array[0])
      sorted_arr.push(array[1])
      array.slice!(0,2)
      merge_sort(array,sorted_arr)
    end
  end
  return sorted_arr if sorted_arr = sorted_arr.sort
  merge_sort(sorted_arr)
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
#should output [0, 1, 1, 2, 3, 5, 8, 13]
p merge_sort([105, 79, 100, 110])
#should output [79, 100, 105, 110]
