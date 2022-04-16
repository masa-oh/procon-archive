n=gets.to_i
as=gets.split.map &:to_i
gets
qs=$<.map{_1.split.map &:to_i}

idxs=Array.new(n+1){[]}
as.each_with_index{|a,i|idxs[a]<<i+1}

qs.each{|l,r,x|
  idx1=idxs[x].bsearch_index{|v|l<=v}||idxs[x].size
  idx2=idxs[x].bsearch_index{|v|r<v}||idxs[x].size
  puts idx2-idx1
}