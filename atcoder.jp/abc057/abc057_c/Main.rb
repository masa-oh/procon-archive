n=gets.to_i
a=1
f=Float::INFINITY
while a*a<=n
  if n%a==0
    b=n/a
    f=[[a,b].max.to_s.size, f].min
  end
  a+=1
end
p f