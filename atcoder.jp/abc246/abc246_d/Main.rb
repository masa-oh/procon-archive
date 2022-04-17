def f(a,b)
  a*a*a + a*a*b + a*b*b + b*b*b
end

n=gets.to_i
x=Float::INFINITY
i,j = 0,10**6
while i<=j
  res=f(i,j)
  if res>=n
    x=[x, res].min
    j-=1
  else
    i+=1
  end
end
puts x