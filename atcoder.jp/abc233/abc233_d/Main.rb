n,k,*a=$<.read.split.map &:to_i
tmp=0
s=0,*a.map{|v|tmp+=v}
g=Hash.new{|h,k|h[k]=0}
p (1..n).sum{|i|g[s[i-1]]+=1; g[s[i]-k]}