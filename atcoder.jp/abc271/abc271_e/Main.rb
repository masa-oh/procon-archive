INF=Float::INFINITY
(n,m,k),*as,es=$<.map{_1.split.map &:to_i}
cities=(1..n).map{[_1,INF]}.to_h
cities[1]=0
es.each{|e|
  a,b,c = as[e-1]
  next if cities[a] == INF
  cities[b] = [cities[a] + c, cities[b]].min
}
p cities[n]!=INF ? cities[n] : -1