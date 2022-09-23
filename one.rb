
    a = true
    b = false
    c = false
    x = 4
    y = 120
    z = -120
    print "1) a: "
    puts (!(a || b) && (a && !b))
    print "b: "
    puts ((z != y ).object_id <= (6 >= y).object_id && a || b && c && x >= 1.5)
    print "c: "
    puts (8 - x**2 <= z) && (x**2 <=> y**2) || (z >= 15)
    print "d: "
    puts x > 0 && y < 0 || z >= (x*y - (-y/x) + (-z))
    print "e: "
    puts !(a || b && !(c || (!a || b)))
    print "f: "
    puts x**2 + y**2 >= 1 && x >= 0 && y >= 0
    print "g: "
    puts (a && (c && b <=> b || a) || c) && b
    x  = 7
    p = false
    print"2) "
    puts (Math.log(x) < x) && !p && (x**2 > x*x) || (2**x == x)
