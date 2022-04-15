o,e=$<.map &:chomp
i=0
ans=''
while o[i]
  ans << o[i] << e[i].to_s
  i+=1
end
puts ans