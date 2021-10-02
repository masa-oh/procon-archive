n=gets.chomp.chars.map &:to_i
s=n.size
ans=[]
(1..s/2).each{|i| # i個とs-i個の組に分ける
  ary=n.combination(i).to_a
  ary.each{|a|
    b=n.dup
    a.each{b.delete_at(b.index(_1))}
    ans << a.sort.reverse.join.to_i * b.sort.reverse.join.to_i
  }
}
p ans.max