#!/usr/bin/env ruby
N = gets.to_i
S = gets.chomp.chars
T = "atcoder"

MOD = 10**9 + 7

# dp[i][j] := 文字列 S の最初の i 文字から何文字か抜き出してつなげる方法のうち、"atcoder" の最初の j 文字まで一致するような方法の個数
dp = Array.new(N + 1) { Array.new(8, 0) }

# 初期化
dp[0][0] = 1

# 状態DP
(0..N - 1).each do |i| # 現在の位置
  (0..7).each do |j| # atcoderの何文字目か
    # s[i] を選ばない場合
    dp[i + 1][j] += dp[i][j]
    # s[i] を選ぶ場合
    dp[i + 1][j + 1] += dp[i][j] if (S[i] == T[j]) && j <= 6
  end

  (0..7).each { |j| dp[i + 1][j] %= MOD }
end

p dp[N][7]
