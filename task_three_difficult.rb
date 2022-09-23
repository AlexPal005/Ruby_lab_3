
  puts "Enter number n:"
  n = gets.to_i - 1
  res = Math.sqrt(2)
  while n != 0
    res = Math.sqrt(2 + res)
    n -= 1
  end
  puts "Result is: #{res} "