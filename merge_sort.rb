def rec_sort(array,sorted_arr = [])
  if array.length >1
    if array[0] > array[1]
      sorted_arr.push(array[1])
      sorted_arr.push(array[0])
      array.slice!(0,2)
      rec_sort(array,sorted_arr)
    elsif array[0] < array[1]
      sorted_arr.push(array[0])
      sorted_arr.push(array[1])
      array.slice!(0,2)
      rec_sort(array,sorted_arr)
    end
  end
  rec_sort(sorted_arr)
end

p rec_sort([3, 2, 1, 13, 8, 5, 0, 1])
#should output [0, 1, 1, 2, 3, 5, 8, 13]
p rec_sort([105, 79, 100, 110])
#should output [79, 100, 105, 110]
