def mod(n)
 n % ((10 ** 9) + 7)
end

def fact(n)
  result = (1..n).to_a.inject(1) { |f, i| mod(f * i) }
end

n, m = gets.chomp.split.map(&:to_i)

result = case (n - m).abs
         when 0  # 犬と猿が同数の場合
           mod(fact(n) * fact(m) * 2) # 犬と猿が交互に並ぶ組み合わせが2通りある
         when 1 # 犬か猿のどちらかが1頭多い場合
           mod(fact(n) * fact(m)) # 多い方が奇数番目に並ぶ
         else # 犬と猿の差が1より大きい場合
           0 # 必ず隣り合うところができるため、不適
         end

puts result