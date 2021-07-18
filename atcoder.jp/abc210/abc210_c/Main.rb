N,K=gets.split.map &:to_i
C=gets.split.map &:to_i

# 最初のK個の飴の並びを対象に、色ごとに個数を集計
counts=C[0..K-1].tally
# 現在の飴の並びでの色の種類数を配列に入れる
types=[counts.size]

# K個の並びの次にある飴を1つずつ調べていく
(K..N-1).each{|i|
  # K個の並びから外れた分の飴の色の数を1つ減らす
  counts[C[i-K]]>1 ? counts[C[i-K]]-=1 : counts.delete(C[i-K])
  # K個の並びに入った分の飴の色の数を1つ増やす
  counts[C[i]]=(counts[C[i]]||0)+1
  # 飴の色の種類数を配列に入れる
  types << counts.size
}

# 色の種類数の最大値を出力
puts types.max