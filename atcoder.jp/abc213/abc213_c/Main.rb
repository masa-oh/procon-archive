(h,w,n),*a=$<.map{_1.split.map &:to_i}
x,y=a.transpose.map{_1.each_with_index.sort}
ans_x,ans_y=[],[]
cnt=1
(0..n-1).each{|i|
  ans_x << [cnt, x[i][1]]
  cnt+=1 if i<n-1 && x[i][0]!=x[i+1][0]
}

cnt=1
(0..n-1).each{|j|
  ans_y << [cnt, y[j][1]]
  cnt+=1 if j<n-1 && y[j][0]!=y[j+1][0]
}

ans=ans_x.sort_by{_2}.transpose[0].zip(ans_y.sort_by{_2}.transpose[0])
ans.each{puts "#{_1} #{_2}"}