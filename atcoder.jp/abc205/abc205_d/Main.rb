n,q=gets.split.map &:to_i
as=gets.split.map &:to_i
ks=$<.map &:to_i

# cs[i]は、A[i]より小さく、Aのいずれとも異なる正整数の数
cs=as.dup
n.times{|i|cs[i]-=i+1}

ks.each{|k|
  idx=cs.bsearch_index{_1>=k}
  puts idx ? as[idx]-(cs[idx]-k)-1 : as[-1]+k-cs[-1]
}