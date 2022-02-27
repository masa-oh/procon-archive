require 'set'
n=gets.to_i
divisors=Set.new
x=1
while x * x <= n
  divisors << x << n/x if n % x == 0
  x += 1
end
divisors.each{puts _1}