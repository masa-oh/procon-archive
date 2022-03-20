v,t,s,d=gets.split.map &:to_i
puts !d.between?(v*t,v*s) ? :Yes : :No