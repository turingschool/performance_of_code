# ======= Performance with Repeated Calculations ======
def random_method(n)
  a = 4
  b = 2
  x = 1
  until a*(x**b) >= n
    Math.sqrt(n-(a*(x**b))).floor - Math.sqrt(n-(a*(x**b))) == 0
    x += 1
  end
end

def random_method(n)
  a = 4
  b = 2
  x = 1
  until a*(x**b) >= n
    target = a*(x**b)
    Math.sqrt(n-(target)).floor - Math.sqrt(n-(target)) == 0
    x += 1
  end
end

 puts random_method(100000000)
