def fibs(num)
  return [0] if num == 1
  return [0, 1] if num == 2

  fib_arr = [0, 1]
  (num - 2).times do |i|
    fib_arr << fib_arr[fib_arr.length - 1] + fib_arr[fib_arr.length - 2]
  end
  fib_arr
end

puts "Enter a fib number"
fib_size = gets.chomp.to_i
p fibs(fib_size)