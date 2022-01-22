a,n=gets.split.map &:to_i
dist=Hash.new{|h,k|h[k]=-1}
dist[1]=0
que=[1]
limit=10**(n.to_s.size)
while !que.empty?
  v=que.shift
  d=dist[v]

  nv1=v*a
  if dist[nv1]<0 && nv1<limit
    dist[nv1]=d+1
    que << nv1
  end

  if v%10!=0
    nv2=(v.to_s[-1]+v.to_s[..-2]).to_i
    if dist[nv2]<0 && nv2<limit
      dist[nv2]=d+1
      que << nv2
    end
  end
end

p dist[n]