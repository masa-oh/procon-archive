(n,m),*ab=$<.map{_1.split.map &:to_i}
h=(1..n).map{[_1,0]}.to_h
ab.each{|a,b|h[a]+=1; h[b]+=1}
puts h.values