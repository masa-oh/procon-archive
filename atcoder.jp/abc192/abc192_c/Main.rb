def g1(x)
  x.digits.sort.reverse.join.to_i
end

def g2(x)
  x.digits.sort.join.to_i
end

def f(x)
  g1(x)-g2(x)
end

n,k=gets.split.map &:to_i
x=0
ans=n
while x<k
  ans=f(ans)
  x+=1
end
p ans