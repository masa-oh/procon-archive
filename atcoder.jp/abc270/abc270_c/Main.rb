(n,x,y),*uv=$<.map{_1.split.map &:to_i}
g=Hash.new{|h,k|h[k]=[]}
uv.each{|u,v|
  g[u] << v
  g[v] << u
}

q=[x]
prev=Array.new(n+1,-2) # -2は経路未確定
prev[x]=-1 # -1はこれ以上戻れない

while !q.empty?
  v=q.shift
  g[v].each{|nv|
    next if prev[nv] >= -1
    prev[nv] = v
    q.push(nv)
  }
end

now = y
ans = []
while now != -1
  ans.unshift(now)
  now = prev[now]
end
puts ans*' '