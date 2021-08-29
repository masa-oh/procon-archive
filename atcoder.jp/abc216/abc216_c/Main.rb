n=gets.to_i
ary=[]
while n!=0
  if n.odd?
    n-=1
    ary.unshift(?A)
  else
    n/=2
    ary.unshift(?B)
  end
end
puts ary*''