n=gets.to_i
uv=(n-1).times.map{gets.split.map{_1.to_i-1}}
graph=Hash.new{|h,k|h[k]=[]}
uv.each{|u,v|
  graph[u] << v
  graph[v] << u
}

visited = [false] * n
dp = [nil] * n
dfs = ->(u, min_l) {
  visited[u] = true
  l = r = min_l
  graph[u].each do |v|
    next if visited[v]
    dfs[v, min_l]
    r = dp[v][1]
    min_l = r + 1
  end
  dp[u] = [l, r]
}
dfs[0, 1]

dp.each{puts _1*' '}