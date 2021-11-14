n,k,*as=$<.read.split.map &:to_i
p (1..).bsearch{|v|v*k>as.sum{|a|[a,v].min}}-1