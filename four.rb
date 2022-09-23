class Four
  def factorial n
    n > 1 ? n * factorial(n - 1) : 1
  end
  def task_four_one
    sum = 0
    n = 2
    curr = ((factorial(n - 1)).to_f / (factorial(n + 1)).to_f) ** (n * (n + 1))
    prev = 0
    while (curr - prev).abs > 0.00001 do
      n += 1
      prev = curr
      sum += curr
      curr = ((factorial(n - 1)).to_f / (factorial(n + 1)).to_f) ** (n * (n + 1))
    end
    puts "1) Result: #{sum}"
  end
  def task_four_second
    sum = 0
    n = 0
    x = 2
    curr = ((x - 1) ** (2 * n + 1)).to_f / (( 2 * n + 1) * ((x + 1) ** (2 * n + 1))).to_f
    prev = 0
    while (curr - prev).abs > 0.00001 do
      n += 1
      prev = curr
      sum += curr
      curr = ((x - 1) ** (2 * n + 1)).to_f / (( 2 * n + 1) * (x + 1) ** (2 * n + 1)).to_f
    end
    puts "2) Result x = 2: #{2 * sum} , ln(2) = #{Math.log(2)}"

  end
  def task_four_third
    sum = 0
    n = 1
    curr = (factorial(2*n - 1) * (factorial(3*n - 1)).to_f )/ (factorial(4* n).to_f  * (3 ** (2*n)) * factorial(2* n).to_f)
    prev = 0
    while (curr - prev).abs > 0.00001 do
      n += 1
      prev = curr
      sum += curr
      curr = (factorial(2*n - 1) * (factorial(3*n - 1)).to_f )/ (factorial(4* n).to_f  * (3 ** (2*n)) * factorial(2* n).to_f)
    end
    puts "3) Result: #{sum}"
  end
  end
four = Four.new
four.task_four_one
four.task_four_second
four.task_four_third
