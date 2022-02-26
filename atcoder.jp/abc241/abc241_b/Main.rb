(n,m),a,b=$<.map{_1.split.map &:to_i}
ga=a.tally
gb=b.tally
puts gb.keys.all?{ga[_1]&&ga[_1]>=gb[_1]} ? :Yes : :No