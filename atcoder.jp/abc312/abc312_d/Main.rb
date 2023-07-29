#!/usr/bin/env ruby
S = gets.chomp.chars
MOD = 998244353

n = S.size
# key: 累積和, value: その累積和の個数
h = { 0 => 1 }

S.each do |c|
  nh = Hash.new(0)
  case c
  when '('
    h.each do |k, v|
      nh[k+1] = v
    end
  when ')'
    h.each do |k, v|
      nh[k-1] = v if k - 1 >= 0
    end
  when '?'
    h.each do |k, v|
      nh[k+1] += v
      nh[k-1] += v if k - 1 >= 0
    end
  end

  h = nh
  break if h.empty?
end

p h[0] % MOD