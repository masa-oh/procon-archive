a,b=gets.split.map &:to_i
unused=1
ans=0
while unused<b
  unused+=a-1
  ans+=1
end
puts ans