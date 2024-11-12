#The Fibonacci Sequence, is a numerical sequence where each number is the sum of the two numbers before it.
#Eg. 0, 1, 1, 2, 3, 5, 8, 13 are the first eight digits in the sequence.

def fibs(n) #Using iteration
  fib_arr = [0,1,1]
  case n
  when 0 then fib_arr = []
  when 1 then fib_arr = [0]
  when 2 then fib_arr = [0,1]
  else
    for i in 3...n
      fib_arr[i] = fib_arr[i - 1] + fib_arr[i - 2]
    end
  end
  fib_arr
end

def fibs_rec(n) #using recursion
  return [] if n == 0
  return [0] if n == 1
  return [0,1] if n == 2
  fib_arr = fibs_rec(n - 1)
  fib_arr <<  fib_arr[-1] + fib_arr[-2]
end

input = 8
p fibs(input)
p fibs_rec(input)
