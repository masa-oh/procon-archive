(n,m),*ab=$<.map{_1.split.map &:to_i}
G=n.times.map{|i|[i+1,[]]}.to_h
ab.each{|a,b|G[a]<< b; G[b]<< a}

dist=Array.new(n+1,-1)
dist[1]=0
cnt=Array.new(n+1,0)
cnt[1]=1
que=[1]

while que!=[]
  v=que.shift
  G[v].each{|nv|
    if dist[nv]==-1
      dist[nv]=dist[v]+1
      que<< nv
      cnt[nv]=cnt[v]
    elsif dist[nv]==dist[v]+1
      cnt[nv]+=cnt[v]
      cnt[nv]%=10**9+7
    end
  }
end

p cnt[n]