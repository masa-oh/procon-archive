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

N=400
M=1995
uf=UnionFind.new(N)
xy=N.times.map{gets.split.map &:to_i}
uv=M.times.map{gets.split.map &:to_i}
ans=[]
uv.reverse_each{|u,v|
  if uf.same_parent?(u,v)
    ans << 0
  else
    uf.unite(u,v)
    ans << 1
  end
}
ans.reverse_each{|v|
  l=gets.to_i
  puts v
  $>.flush
}