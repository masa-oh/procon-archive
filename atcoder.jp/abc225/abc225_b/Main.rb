(n,),*ab=$<.map{_1.split.map &:to_i}
h=Hash.new{|h,k|h[k]=[]}
ab.each{|a,b|h[a] << b; h[b] << a}
puts h.values.map{_1.size}.max==n-1 ? :Yes : :No