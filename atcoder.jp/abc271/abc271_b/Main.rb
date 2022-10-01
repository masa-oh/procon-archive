n,q=gets.split.map &:to_i
l=n.times.map{gets.split.map &:to_i}
l.each &:shift
s=$<.map{_1.split.map(&:to_i).map &:pred}
s.each{|x,y|puts l[x][y]}