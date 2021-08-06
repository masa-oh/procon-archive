(n,m,c),b,*a=$<.map{_1.split.map &:to_i}
p a.count{|x|m.times.map{|i|b[i]*x[i]}.sum+c>0}