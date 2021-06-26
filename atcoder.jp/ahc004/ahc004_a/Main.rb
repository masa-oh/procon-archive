_,m=gets.split.map &:to_i
ss=m.times.map{gets.chomp}.sort_by{_1.size}.reverse
ans=Array.new(20,'.'*20)
i,j=[0,0]
while i<20
  ans[i]=ss[j]
  j+=1
  while ans[i].size<=20
    ans[i].concat(ss[j])
    j+=1
  end
  ans[i].slice!(20..)
  i+=1
end
puts ans