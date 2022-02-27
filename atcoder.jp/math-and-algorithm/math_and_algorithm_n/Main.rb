n=gets.to_i
ans=[]
x=2
while x * x <= n
  if n % x == 0
    ans << x
    n /= x
    x = 2
  else
    x += 1
  end
end
ans << n
puts ans*' '