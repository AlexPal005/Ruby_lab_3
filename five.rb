class Five
  def task_five_first
    n = 11.0
    c = 5.0
    x = 1.0
    for point in 1..(n+c) do
      y =  ( ( (x **(2/c) + n ** (2/c)) ** 2 - 4 * (x **((2/c) + (2/n))) ).to_f / (( (x ** (1/n) - x ** (1/c)) ** 2 + 3 * (x **(1/n + 1/c))).to_f)) ** 0.5 + (x ** 2 + 2 * x -4)/(c+x)
      puts y
      x += n/(n+c)
    end
  end
  def task_five_second
    pi = 3.141
    n = 11.0
    c = 5.0
    count = (3.0/2) * n + c
    x = (pi - pi/n)/ count
    while  count > 0 do
      z = (((Math.sin(x) ** 2 + Math.tan(x) ** 2) ** c + 1) * (Math.cos(x) ** 2 - Math.cos(x)**2/Math.sin(x)**2 +1)) /
        (Math.cos(x) ** 2 + Math.cos(x)**2/Math.sin(x)**2 +1) * (Math.sin(x) ** 2 + Math.tan(x) ** 2 - 1)
      puts z
      x += (pi - pi/n)/ ((3/2) * n + c)
      count -= 1
    end
  end
  def task_five_third
    n = 11.0
    c = 5.0
    count = 2 * n
    x = 2.0
    while count > 0  do
      if x >= 2.0 && x < n
        f =  ( ( (x **(2/c) + n ** (2/c)) ** 2 - 4 * (x **((2/c) + (2/n))) ).to_f / (( (x ** (1/n) - x ** (1/c)) ** 2 + 3 * (x **(1/n + 1/c))).to_f)) ** 0.5 + (x ** 2 + 2 * x -4)/(c+x)
      elsif  x > n && x < 2*n
        f = (((Math.sin(x) ** 2 + Math.tan(x) ** 2) ** c + 1) * (Math.cos(x) ** 2 - Math.cos(x)**2/Math.sin(x)**2 +1)) /
          (Math.cos(x) ** 2 + Math.cos(x)**2/Math.sin(x)**2 +1) * (Math.sin(x) ** 2 + Math.tan(x) ** 2 - 1)
      end
      puts f
      x += (c - 2.0) / (2 * n)
      count -= 1
    end
  end
end

five = Five.new
puts("First:")
five.task_five_first
puts("Second:")
five.task_five_second
puts("Third:")
five.task_five_third