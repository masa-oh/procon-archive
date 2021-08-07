(n,d),*x=$<.map{_1.split.map &:to_i}
ans=[]
(0...n).each{|i|
  (i+1...n).each{|j|
    ans << x[i].zip(x[j]).map{|y,z|(y-z)**2}.sum
  }
}
p ans.count{|v|v==Integer.sqrt(v)**2}