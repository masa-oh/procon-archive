(n,x),*vp=$<.map{_1.split.map &:to_i}
x*=100
ans=-1
vp.each_with_index{|(v,p),i|break ans=i+1 if (x-=v*p)<0}
p ans