N,Q=gets.split.map &:to_i
Ab=(N-1).times.map{gets.split.map &:to_i}
Cd=Q.times.map{gets.split.map &:to_i}

G=Array.new(N){[]} # 街Nから道路で直接繋がっている街のリスト
Ab.map{|a,b| G[a-1].push(b-1) and G[b-1].push(a-1) }

#BFSで使う変数を定義
dist=Array.new(N,-1) # 始点からの距離。初期値は「-1:未訪問」と　する
queue=[] # 次に調べる街を入れる作業キュー

#街1（インデックスは0）を始点として、他の街への最短距離を調べる
dist[0]=0
queue.push(0)

until queue.empty? # 作業キューが空になるまで探索
  # キューの先頭から1つ取り出す
  v=queue.shift
  # BFS開始
  G[v].each{|nv| # 街vから直接到達可能なすべてのnvについて調べる
    next if dist[nv]!=-1
    dist[nv]=dist[v]+1
    queue.push(nv)
  }
end

ans=[]
Cd.each{|c,d|
  # 街1からの最短距離の偶奇が同じであれば街中、そうでなければ道路上で出会うので、xor(^)で求める
  ans.push (dist[c-1].even? ^ dist[d-1].even?) ? "Road" : "Town"
}

puts ans