n,m=gets.split.map &:to_i
s=n%12*30 + m/2.0
l=m*6
puts [a=(s-l).abs, 360-a].min