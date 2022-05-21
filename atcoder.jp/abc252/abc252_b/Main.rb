(n,k),a,b=$<.map{_1.split.map &:to_i}
m=a.max
ary=a.map.with_index.select{|v,i|v==m}.map{_1[1]+1}
puts ary-b!=ary ? :Yes : :No