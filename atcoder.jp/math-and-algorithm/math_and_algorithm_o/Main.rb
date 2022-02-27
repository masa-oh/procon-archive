a,b=gets.split.map &:to_i
while a>0 && b>0
  a>b ? a%=b : b%=a
end
p [a,b].max