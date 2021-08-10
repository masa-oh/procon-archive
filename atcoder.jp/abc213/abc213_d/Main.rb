(n,),*ab=$<.map{_1.split.map &:to_i}
G={}
ab.each{|a,b|
  G[a] ? G[a] << b : G[a]=[b]
  G[b] ? G[b] << a : G[b]=[a]
}
G.values.each{_1.sort!}

Ans=[]
Flg=Array.new(n+1,nil)

def dfs(x)
  Ans << x
  Flg[x]=x
  G[x].each{if !Flg[_1]; dfs(_1); Ans << x; end}
end

dfs 1
puts Ans*' '