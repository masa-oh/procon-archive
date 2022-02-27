n,*a=$<.read.split.map &:to_i
h=a.tally
p h.values.sum{|v|v>=2 ? v*(v-1)/2 : 0}