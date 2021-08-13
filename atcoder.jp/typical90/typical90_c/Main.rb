(N,),*ab=$<.map{_1.split.map &:to_i}

G={} # 都市Nから道路で直接繋がっている都市のリスト
ab.each{|a,b|
  G[a] ? G[a].push(b) : G[a]=[b]
  G[b] ? G[b].push(a) : G[b]=[a]
}

def bfs(start) # 都市startから最も遠い都市までの距離を求める
  #BFSで使う変数を定義
  dist=Array.new(N+1,-1) # 始点からの距離。初期値は「-1:未訪問」と　する
  queue=[] # 次に調べる都市を入れる作業キュー

  #始点を設定
  dist[start]=0
  queue.push(start)

  until queue.empty? # 作業キューが空になるまで探索
    # キューの先頭から1つ取り出す
    v=queue.shift
    # BFS開始
    G[v].each{|nv| # 都市vから直接到達可能なすべてのnvについて調べる
      next if dist[nv]!=-1
      dist[nv]=dist[v]+1
      queue.push(nv)
    }
  end
  
  return [m=dist.max, dist.index(m)] # [始点から最も遠い都市までの距離、その都市の番号]
end

# 都市同士の繋がりを木構造と見立てたときの木の直径+1を求める
x=bfs(1)[1] # 始点を都市1（任意の都市）とした時、始点から最も遠い都市をxとする
puts bfs(x)[0]+1 # 始点をxとした時、最も遠い都市までの距離が木の直径となる