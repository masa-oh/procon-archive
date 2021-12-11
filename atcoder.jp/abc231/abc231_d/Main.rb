(n,m),*ab=$<.map{_1.split.map &:to_i}
g=Hash.new{|h,k|h[k]=[]}
ab.each{|a,b|g[a]<< b; g[b]<< a}

visited=Array.new(n+1,false)
flg=true
(1..n).each{|i|
  next if visited[i]
  que=[i]
  visited[i]=true
  while v=que.pop
    cnt1=0 #隣り合う数の個数
    cnt2=0 #自分を訪れた回数
    g[v].each{|nv|
      cnt1+=1
      visited[nv] ? cnt2+=1 : que<< nv
      visited[nv]=true
    }
    flg=false if cnt1>=3
    flg=false if cnt2>=2
  end
}
puts flg ? :Yes : :No