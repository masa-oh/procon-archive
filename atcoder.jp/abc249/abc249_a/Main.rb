a,b,c,d,e,f,x=gets.split.map &:to_i
d1=b*(a*(x/(a+c))+[x%(a+c),a].min)
d2=e*(d*(x/(d+f))+[x%(d+f),d].min)

if d1>d2
  puts :Takahashi
elsif d1<d2
  puts :Aoki
else
  puts :Draw
end