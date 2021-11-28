def nC2(n)
  n*(n-1)/2
end

n=gets.to_i
s=gets.chomp
ans=0
cnt=1
(0..n-2).each{|i|
  if s[i]==s[i+1]
    cnt+=1
    ans+=nC2(cnt) if i==n-2 && cnt>1
  else
    ans+=nC2(cnt) if cnt>1
    cnt=1
  end
}
p ans