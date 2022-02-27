n,*a=$<.read.split.map &:to_i
h=Hash.new{|h,k|h[k]=0}
n.times{|i|h[a[i]]+=1}
p h[100]*h[400] + h[200]*h[300]