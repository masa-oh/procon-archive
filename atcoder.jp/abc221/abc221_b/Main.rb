s,t=`dd`.split
ary=[]
ans=true
(0..s.size-2).each{|i|
  if s[i]!=t[i]
    if (s[i]==t[i+1] && t[i]==s[i+1]) || ary.include?(i-1)
      ary << i
    else
      ans=false
    end
  end
}
puts ary.size<=2 && ans ? :Yes : :No