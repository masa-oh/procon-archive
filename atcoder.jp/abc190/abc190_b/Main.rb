(n,s,d),*xy=$<.map{_1.split.map &:to_i}
puts xy.find{|x,y|x<s&&y>d} ? :Yes : :No