include Math
a,b,c=$<.map{_1.split.map &:to_i}

# ベクトルBA,BC,CA,CBの成分表示を求める
BAx=a[0]-b[0]; BAy=a[1]-b[1]
BCx=c[0]-b[0]; BCy=c[1]-b[1]
CAx=a[0]-c[0]; CAy=a[1]-c[1]
CBx=b[0]-c[0]; CBy=b[1]-c[1]

# パターン分け
# 点Aから線分BCへの垂線の距離が最短になる場合
pat=2
# 点Aから点Bまでの距離が最短になる場合(＝ベクトルBAとBCの内積が負)
pat=1 if BAx*BCx + BAy*BCy < 0
# 点Aから点Cまでの距離が最短になる場合(＝ベクトルCAとCBの内積が負)
pat=3 if CAx*CBx + CAy*CBy < 0

# 距離を求める
case pat
when 1 # 点Aから点Bまでの距離（＝ベクトルBAの大きさ）を求める
  ans=sqrt(BAx**2 + BAy**2)
when 3 # 点Aから点Cまでの距離（＝ベクトルCAの大きさ）を求める
  ans=sqrt(CAx**2 + CAy**2)
when 2 # 点Aから線分BCへの垂線の距離を求める
  # BAとBCが作る平行四辺形の面積（＝ベクトルBAとBCの外積）
  s=(BAx*BCy - BAy*BCx).abs
  # 平行四辺形の底辺（BC）の長さ（＝ベクトルBCの大きさ）
  bc_length=sqrt(BCx**2 + BCy**2)
  # 平行四辺形の高さが答えになる
  ans=s*1.0/bc_length
end

puts ans