
  x = -4.3
  y = 0
  if x >= -4 && x <= 0
    y = ((x - 2 ).abs / (x**2 * Math.cos(x))**(1/7))
  elsif x > 0 && x <= 12
    y = 1 / ((Math.tan( x + 1 / Math.exp(x)) / (Math.sin(x)**2)))**(2/7)
  elsif x < -4 || x > 12
    y = 1 / (1 + x / (1 + x / (1 + x)))
  end
  puts "With x, else: #{y} "
  y = 0

  case x
  when -4..0
    y = ((x - 2 ).abs / (x**2 * Math.cos(x))**(1/7))
  when 1..12
    y = 1 / ((Math.tan( x + 1 / Math.exp(x)) / (Math.sin(x)**2)))**(2/7)
  when -Float::INFINITY...-4, 12.0.next_float ..Float::INFINITY
    y = 1 / (1 + x / (1 + x / (1 + x)))
  end
  puts "With switch: #{y} "
