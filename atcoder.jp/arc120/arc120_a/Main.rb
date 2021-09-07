n,*a=$<.read.split.map &:to_i
max=a[0]
sum=sum2=0
dp=Array.new(n,0)
i=0
k=1
while i<n
  max=a[i] if max<a[i]
  sum2+=a[i]
  sum+=sum2
  dp[i]=sum+max*k
  i+=1
  k+=1
end
puts dp*' '