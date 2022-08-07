N,M=gets.split.map &:to_i

def dfs(ans, nums)
  ans << nums if nums.size == N
  
  now = nums[-1]
  (now+1..M).map do |i|
    dfs(ans, nums + [i])
  end
end

ans=[]
(1..M-N+1).each do |i|
  dfs(ans, [i])
end

puts ans.map{_1*' '}