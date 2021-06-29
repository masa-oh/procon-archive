n=gets.to_i
as=gets.split.map &:to_i
ans=0
i=0
while i<n
  j=i+1
  while j<n
    ans= [ ans, (as[i]-as[j]).abs ].max
    j+=1
  end
  i+=1
end

puts ans