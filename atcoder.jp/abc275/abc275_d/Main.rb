def f(x)
  return 1 if x==0
  @ans[x] = (@ans[x/2] || f(x/2)) + (@ans[x/3] || f(x/3))
end

@ans={}
p f(gets.to_i)