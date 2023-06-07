def fibs(num)
  return [0] if num == 1
  return [0, 1] if num == 2

  fib_arr = [0, 1]
  (num - 2).times do |i|
    fib_arr << fib_arr[fib_arr.length - 1] + fib_arr[fib_arr.length - 2]
  end
  fib_arr
end

#-----------------------------------------

def fibs_rec(num)
  return [0] if num == 1
  return [0, 1] if num == 2

  fib_arr = fibs_rec(num - 1)
  fib_arr << fib_arr[-2] + fib_arr[-1]
  fib_arr
end

puts 'Enter a fib number'
fib_size = $stdin.gets.chomp.to_i
p fibs_rec(fib_size)