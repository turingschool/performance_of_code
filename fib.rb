# ==== Fibonacci Sequence ====
# Install ruby-prof gem (gem install ruby-prof)
# Then profile this file with:
# $ ruby-prof performance-of-code.rb

def fib(n)
  return n if (0..1).include? n
  fib(n-1) + fib(n-2) if n > 1
end

number = 25

puts fib(number)

