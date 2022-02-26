a=gets.split.map &:to_i
h=a.map.with_index{|v,i|[i,v]}.to_h
p h[h[h[0]]]