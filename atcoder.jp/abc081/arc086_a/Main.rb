(n,k),a=$<.map{_1.split.map &:to_i}
c=a.tally
p (s=c.keys.size)>k ? c.values.sort[0, s-k].sum : 0