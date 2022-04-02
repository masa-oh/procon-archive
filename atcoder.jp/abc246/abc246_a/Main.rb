x,y=$<.map{_1.split.map &:to_i}.transpose
puts [x.tally.invert[1],y.tally.invert[1]]*' '