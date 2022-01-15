class UnionFind
  def initialize(size)
    @rank = Array.new(size, 0)
    @parent = Array.new(size, &:itself)
  end

  def unite(id_x, id_y)
    x_parent = get_parent(id_x)
    y_parent = get_parent(id_y)
    return if x_parent == y_parent

    if @rank[x_parent] > @rank[y_parent]
      @parent[y_parent] = x_parent
    else
      @parent[x_parent] = y_parent
      @rank[y_parent] += 1 if @rank[x_parent] == @rank[y_parent]
    end
  end

  def get_parent(id_x)
    @parent[id_x] == id_x ? id_x : (@parent[id_x] = get_parent(@parent[id_x]))
  end

  def same_parent?(id_x, id_y)
    get_parent(id_x) == get_parent(id_y)
  end
end

n,m,q=gets.split.map &:to_i
g=m.times.map{gets.split.map &:to_i}
e=q.times.map{gets.split.map &:to_i}

g=g.map{_1<<-1} # gの要素の末尾に一律で-1を追加
e=e.map.with_index{_1<<_2} # eの要素の末尾にindexを追加
ans=[]

# 重さで昇順ソートしてクラスカル法
uf=UnionFind.new(n)
(g+e).sort_by{|u,v,w,x|w}.each{|u,v,w,x|
  case x
  when -1 # gに含まれる辺の時
    uf.unite(u-1,v-1) if !uf.same_parent?(u-1,v-1)
  else # eに含まれる辺の時
    ans[x] = uf.same_parent?(u-1,v-1) ? :No : :Yes
  end
}
puts ans