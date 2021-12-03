n,a,b,p,q,r,s=$<.read.split.map{_1.to_i-1}

l1=[1-a,1-b].max; r1=[n-a,n-b].min;
l2=[1-a,b-n].max; r2=[n-a,b-1].min;

xy1=[a+l1, b+l1]
xy2=[a+l2, b-l2]

(p..q).each{|i|
  ans=[]
  (r..s).each{|j|
    ans << ((xy1[0]-i==xy1[1]-j || xy2[0]-i==-(xy2[1]-j)) ? '#' : '.')
  }
  puts ans*''
}