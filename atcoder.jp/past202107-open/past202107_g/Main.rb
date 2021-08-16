n=gets.to_i
# 平衡三進法とやら
now=1
ans=[]
while n>0
  if n%3==0
    now*=3
    n/=3
  elsif n%3==1
    ans << now
    n-=1
  elsif n%3==2
    ans << -now
    n+=1
  end
end
puts ans.size
puts ans*(' ')