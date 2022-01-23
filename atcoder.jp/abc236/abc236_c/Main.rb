n,m=gets.split.map &:to_i
s,t=$<.map{_1.split.map &:chomp}
g=s.map{[_1,false]}.to_h
t.each{g[_1]=true}
g.values.each{puts _1 ? :Yes : :No}