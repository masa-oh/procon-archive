(n,),*xy=$<.map{_1.split.map &:to_i}
ans=0
[*0..n-1].combination(3).each{|i,j,k|
  flg=true
  flg=false if (xy[i][1]*(xy[j][0]-xy[k][0]))+(xy[j][1]*(xy[k][0]-xy[i][0]))+(xy[k][1]*(xy[i][0]-xy[j][0]))==0
  ans+=1 if flg
}
p ans