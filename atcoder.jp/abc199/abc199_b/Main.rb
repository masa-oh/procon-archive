gets;ab=$<.map{_1.split.map &:to_i}
p (d=ab[1].min-ab[0].max)>=0 ? d+1 : 0