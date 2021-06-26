n=gets.to_i
t,l,r=n.times.map{gets.split.map(&:to_i)}.transpose
ans=0

lr=t.zip(l,r).map{|t,l,r|
  case t
  when 1; [l,r]
  when 2; [l,r-0.1]
  when 3; [l+0.1,r]
  when 4; [l+0.1,r-0.1]
  end
}

i=0
while i<lr.count
  j=i+1
  while j<lr.count
    l1,r1,l2,r2=lr[i]+lr[j]
    if (l2<l1 && r2<l1) || (l2>r1 && r2>r1)
    else
      ans+=1
    end
    j+=1
  end
  i+=1
end
puts ans