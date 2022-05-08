n,q,*x=$<.read.split.map &:to_i

# val[i] := 左からi番目のボールに書かれている数
val=(1..n).map{|i|[i,i]}.to_h
# pos[j] := 整数jが書かれているボールが左から何番目か
pos=val.dup

x.each{|i|
  p0 = pos[i]
  p1 = pos[i] < n ? p0 + 1 : p0 - 1
  v0 = val[p0]
  v1 = val[p1]
  pos[v0], pos[v1] = pos[v1], pos[v0]
  val[p0], val[p1] = val[p1], val[p0]
}
(1..n).map{puts val[_1]}