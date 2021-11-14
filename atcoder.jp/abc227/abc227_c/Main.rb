n=gets.to_i
ans=0
a=1
while a**3<=n
  b=a
  while b*b<=n
    c_max=n/(a*b)
    break if c_max<b
    ans+=c_max-b+1
    b+=1
  end
  a+=1
end
p ans