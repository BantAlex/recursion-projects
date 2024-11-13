def merge_sort(array)
  return array if array.length <=1
  first = array[0]
  lesser = array[1..-1].select{|x| x<=first} #Every number < first
  greater = array[1..-1].select{|x| x>first} #Every number > first
  merge_sort(lesser) + [first] + merge_sort(greater) #Lesser (now sorted) + the stable one + greater(now sorted)
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
#should output [0, 1, 1, 2, 3, 5, 8, 13]
p merge_sort([105, 79, 100, 110])
#should output [79, 100, 105, 110]
