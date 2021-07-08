N,M=gets.split.map &:to_i
AB=M.times.map{gets.split.map &:to_i}

G=Array.new(N){[]} # 都市Nから道路で直接繋がっている都市のリスト
AB.map{|a,b| G[a-1].push(b-1) }

ans=0

def dfs(v)
  return if @tmp[v]
  @tmp[v]=true
  G[v].each{dfs(_1)}
end

(0..N-1).each{|i|
  @tmp=Array.new(N, false) # tmp[j]は都市jに到達可能かどうか
  dfs(i)
  ans+=@tmp.count(true)
}

puts ans