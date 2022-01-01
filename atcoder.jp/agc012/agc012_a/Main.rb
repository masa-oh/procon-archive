n,*a=$<.read.split.map &:to_i
p a.sort.drop(n).map.with_index{|v,i|i.even? ? v : 0}.sum