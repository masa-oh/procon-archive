_,*a=$<.read.split.map &:to_i
p a.tally.filter{|k,v|v!=4}.keys[0]