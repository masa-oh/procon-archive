N,M=gets.split.map &:to_i
A=gets.split.map(&:to_i).sort
B=gets.split.map(&:to_i).sort

min=10**9+7
A.each{|a|
  idx=B.bsearch_index{|b|(a-b)<0}||M-1
  min=[min, (B[idx-1]-a).abs, (B[idx]-a).abs].min
}
puts min