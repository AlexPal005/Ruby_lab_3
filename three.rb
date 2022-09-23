
  x = 2
  res = 1
  for i in 2..11 do
    res += (((-1) ** (i + 1)) * i/(i+1)) * (x ** (i - 1))
  end
  puts"First: #{res}"

  res_second = 1
  for i in 2..8 do
    res_second += 1/(3**i)
  end
  puts "Second: #{res}"
