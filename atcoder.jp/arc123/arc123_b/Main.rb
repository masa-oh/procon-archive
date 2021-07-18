N=gets.to_i
A,B,C=3.times.map{gets.split.map(&:to_i).sort}

tmpB=[]
tmpC=[]
ans=0

A.each{|a|
  idx=B.bsearch_index{_1>a}
  break if idx.nil?
  tmpB << B[idx]
  B.delete_at(idx)
}

tmpB.each{|b|
  idx=C.bsearch_index{_1>b}
  break if idx.nil?
  tmpC << C[idx]
  C.delete_at(idx)
  ans+=1
}

puts ans