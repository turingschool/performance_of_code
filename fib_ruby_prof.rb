require "ruby-prof"
def fib(n)
  return n if (0..1).include? n
  fib(n-1) + fib(n-2) if n > 1
end

number = 25

RubyProf.start
puts fib(number)

result = RubyProf.stop
# printer = RubyProf::MultiPrinter.new(result)
# printer.print(:path => "./tmp", :profile => "profile")

printer = RubyProf::DotPrinter.new(result)
File.open("./tmp/profile.dot", "w") do |f|
  printer.print(f)
end
