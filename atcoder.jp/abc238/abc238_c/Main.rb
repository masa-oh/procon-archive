MOD=998244353
n=gets.to_i
pr=0
r=9
ans=0
while n>r
  ans+=(1+(r-pr))*(r-pr)/2
  pr=r
  r=(r.to_s+'9').to_i
end
r=n
ans+=(1+(r-pr))*(r-pr)/2
p ans%MOD