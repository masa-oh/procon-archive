n=gets.to_i
a=[]
(0..n-1).each{|i|
  a[i]=[]
  (0..i).each{|j|
    next a[i][j]=1 if j==0 || j==i
    a[i][j] = a[i-1][j-1] + a[i-1][j]
  }
}
a.each{puts _1*' '}