def fibs_it(num)
  fib_array = [0,1]
  return nil if num == 0
  return [0] if num == 1
  return fib_array if num == 2

  current_num = 2
  while current_num <= num - 1
    fib_array << fib_array[current_num - 1] + fib_array[current_num - 2]
    current_num += 1
  end
  fib_array
end

def fibs_rec(num,fib_array = [0,1],current_num = 2)
  return nil if num == 0
  return [0] if num == 1
  return [0,1] if num == 2
  return fib_array if current_num == num

  fib_array << fib_array[current_num - 1] + fib_array[current_num - 2]
  current_num += 1

  fibs_rec(num,fib_array,current_num)
end
