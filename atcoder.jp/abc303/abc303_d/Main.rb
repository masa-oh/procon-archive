#!/usr/bin/env ruby
x, y, z = gets.split.map &:to_i
s = gets.chomp.chars
n = s.size
dp1 = Array.new(n + 1, -1) # CapsLockがfalseのときの最小値
dp2 = Array.new(n + 1, -1) # CapsLockがtrueのときの最小値

dp1[0] = 0
dp2[0] = z

(1..n).each do |i|
  if s[i - 1] == "a"
    dp1[i] = [dp1[i - 1] + x, dp2[i - 1] + z + x].min
    dp2[i] = [dp2[i - 1] + y, dp1[i - 1] + z + y].min
  else
    dp1[i] = [dp1[i - 1] + y, dp2[i - 1] + z + y].min
    dp2[i] = [dp2[i - 1] + x, dp1[i - 1] + z + x].min
  end
end

p [dp1[-1], dp2[-1]].min
