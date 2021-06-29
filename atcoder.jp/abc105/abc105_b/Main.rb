n=gets.to_i
exists=false

i=0
while i<=n/7
  j=0
  while j<=n/4
    if 7*i+4*j==n
      exists=true; break
    end
    j+=1
  end
  i+=1
end

puts exists ? 'Yes' : 'No'