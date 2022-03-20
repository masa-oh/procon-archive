s,t=$<.map{_1.split}
c=0
while s!=t
  c+=1
  if s[0]!=t[0]
    i=s.index t[0]
    s[0],s[i]=s[i],s[0]
    next
  end
  if s[1]!=t[1]
    s[1],s[2]=s[2],s[1]
  end
end
puts c.odd? ? :No : :Yes