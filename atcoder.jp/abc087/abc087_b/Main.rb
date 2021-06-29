a,b,c,x=$<.map{_1.to_i}
ans=0
i=0
while i<=a
  j=0
  while j<=b
    k=0
    while k<=c
      total=500*i+100*j+50*k
      ans+=1 if total==x
      k+=1
    end
    j+=1
  end
  i+=1
end

puts ans