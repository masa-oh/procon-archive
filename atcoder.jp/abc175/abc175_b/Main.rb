(n,),l=$<.map{_1.split.map(&:to_i).sort}
ans=0
(puts 0; exit) if n<3
(0..n-3).each{|i|
  (i+1..n-2).each{|j|
    (j+1..n-1).each{|k|
      ans+=1 if l[i]!=l[j] && l[j]!=l[k] && l[i]+l[j]>l[k]
    }
  }
}
p ans