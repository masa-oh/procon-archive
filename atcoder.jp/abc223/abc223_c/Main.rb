n,*ab=$<.map {_1.split.map &:to_f}
t=ab.sum{_1/_2}/2 # 合流する時間
ans=0 # 合流する距離
ab.each{|a,b|
  if a/b<t
    t-=a/b
    ans+=a
  elsif a/b>=t
    ans+=b*t
    break
  end
}
p ans