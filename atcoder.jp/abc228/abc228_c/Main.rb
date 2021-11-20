(n,k),*ps=$<.map{_1.split.map &:to_i}
sum=ps.map{|p|p.sum}
s_sum=sum.sort.reverse
sum.each{|s|
  puts (s_sum.bsearch_index{s+300>=_1}||n-1)<=k-1 ? :Yes : :No
}