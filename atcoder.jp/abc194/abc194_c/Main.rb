n,*a=`dd`.split.map &:to_i
ha=a.tally
ans=0
ha.keys.each{|i|
  ha.keys.each{|j|
    next if i==j
    ans+=ha[i]*ha[j]*(i-j)**2
  }
  ha.delete(i)
}
p ans