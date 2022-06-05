n = gets.to_s.to_i64
ans = 0

(1..n).each do |i|
  k = i
  d = 2
  while d * d <= k
    while k % (d * d) == 0
      k /= d * d
    end
    d += 1
  end

  d = 1
  while k * d * d <= n
    ans += 1
    d += 1
  end
end

p ans