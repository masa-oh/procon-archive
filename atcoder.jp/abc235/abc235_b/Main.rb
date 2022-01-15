n,*h=$<.read.split.map &:to_i
n.times{|i|break p h[i] if i==n-1 || h[i]>=h[i+1]}