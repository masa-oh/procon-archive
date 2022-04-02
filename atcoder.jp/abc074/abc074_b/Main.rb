n,k,*x=$<.read.split.map &:to_i
p x.sum{|v|[v,(v-k).abs].min}*2